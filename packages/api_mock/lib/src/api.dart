import 'dart:async';
import 'dart:math';

import 'package:api/api.dart';
import 'package:core/core.dart';
import 'package:rxdart/subjects.dart';

class MockApi extends Api implements Disposable {
  MockApi(User loggedInUser) : super(loggedInUser);
  late final _fr = MockFriendsApi(loggedInUser);
  late final _n = MockNotesApi(loggedInUser, this);
  late final _us = MockUsersApi();

  @override
  Future<Tokens> refresh(String refreshToken) async {
    return const Tokens(
      accessToken: '__mock_access__',
      refreshToken: '__mock_refresh__',
    );
  }

  @override
  FriendsApi friends() => _fr;

  @override
  NotesApi notes() => _n;

  @override
  UsersApi users() => _us;

  @override
  void dispose() {
    _fr.dispose();
    _us.dispose();
  }
}

class MockFriendsApi implements FriendsApi, Disposable {
  MockFriendsApi(this.user);
  final User user;
  int _nextId = 0;
  final _friends = BehaviorSubject<List<Friend>>.seeded([], sync: true);

  @override
  Future<Friend> create({
    required String name,
    required DateTime birthday,
    String? description,
  }) async {
    final friend = Friend(
      id: 'friend_${_nextId++}',
      name: name,
      birthday: birthday,
      description: description,
      notes: [],
    );

    final cur = List.of(_friends.value)..add(friend);

    _friends.add(cur.toSet().toList());
    return friend;
  }

  @override
  Future<bool> delete(String id) async {
    final success = Random().nextDouble() > 0.3;
    if (!success) return false;
    final cur = List.of(_friends.value)..removeWhere((f) => f.id == id);
    _friends.add(cur);
    return true;
  }

  @override
  Future<Friend> edit(
    String id, {
    String? name,
    DateTime? birthday,
    Opt<String>? description,
  }) async {
    final cur = List.of(_friends.value);
    final index = cur.indexWhere((f) => f.id == id);
    if (index == -1) {
      throw ChainedException.origin('Friend with id $id does not exist.');
    }

    final found = cur[index];
    final friend = found.copyWith(
      name: name ?? found.name,
      birthday: birthday ?? found.birthday,
      description:
          description == null ? found.description : description.nullable(),
    );
    cur[index] = friend;
    _friends.add(cur);

    return friend;
  }

  @override
  Stream<Friend> find(String id) async* {
    await for (final list in _friends) {
      final friend = list.firstWhereOrNull((f) => f.id == id);
      if (friend == null) return;
      yield friend;
    }
  }

  @override
  Stream<List<Friend>> findMany({
    FriendWith? where,
    SortOrder? createdAt,
    int? take,
    int? skip,
  }) {
    if (where != null && createdAt != null || take != null || skip != null) {
      print(
        'Filters and pagination are not supperted in MockApi. ${CoreTrace.frame}',
      );
    }
    return _friends.distinct();
  }

  @override
  void dispose() {
    _friends.close();
  }
}

class MockNotesApi implements NotesApi {
  MockNotesApi(this.user, this._api);
  final MockApi _api;
  final User user;
  int _nextId = 0;

  @override
  Future<Note> create({
    required String friendId,
    required String description,
  }) async {
    final note = Note(
      id: 'note_${_nextId++}',
      friendId: friendId,
      description: description,
    );
    try {
      final found = await _api.friends().find(friendId).first;
      final friend = found.copyWith(notes: found.notes..add(note));
      final cur = List.of(_api._fr._friends.value);
      final index = cur.indexOf(found);
      cur[index] = friend;
      _api._fr._friends.add(cur);
    } catch (e) {
      throw ChainedException.origin(
        'Friend with id $friendId can not be found',
      );
    }

    return note;
  }

  @override
  Future<bool> delete(String id) async {
    final friends = _api._fr._friends.value;
    Friend? friend;
    Note? note;
    for (final fr in friends) {
      for (final nt in fr.notes) {
        if (nt.id == id) {
          friend = fr;
          note = nt;
          break;
        }
      }
    }

    if (friend != null && note != null) {
      final modifiedFr =
          friend.copyWith(notes: List.of(friend.notes..remove(note)));
      friends[friends.indexOf(friend)] = modifiedFr;
      _api._fr._friends.add(List.of(friends));
    }

    return friend != null;
  }
}

class MockUsersApi implements UsersApi, Disposable {
  final _user = BehaviorSubject<User>(sync: true);

  @override
  Future<User> edit({
    required String id,
    required String name,
  }) async {
    final user = User(id: id, email: 'mock@email.com', name: name);

    assert(() {
      if (_user.valueOrNull == null) return true;
      return _user.value.id == id;
    }(), 'Multiple users are not supported by MockApi.');

    _user.add(user);
    return user;
  }

  @override
  Stream<User> find(String id) {
    return _user.distinct();
  }

  @override
  void dispose() {
    _user.close();
  }
}

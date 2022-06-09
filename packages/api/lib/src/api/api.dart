import 'package:api/api.dart';
import 'package:core/core.dart';

abstract class Api {
  const Api(this.loggedInUser);
  final User loggedInUser;

  Future<Tokens> refresh(String refreshToken);
  FriendsApi friends();
  NotesApi notes();
  UsersApi users();
}

abstract class FriendsApi {
  Stream<Friend> find(String id);

  Stream<List<Friend>> findMany({
    FriendWith? where,
    SortOrder? createdAt,
    int? take,
    int? skip,
  });

  Future<Friend> create({
    required String name,
    required DateTime birthday,
    String? description,
  });

  /// If [description] is `null` it will not change. If it is `Opt.empty()` it will be cleared.
  Future<Friend> edit(
    String id, {
    String? name,
    DateTime? birthday,
    Opt<String>? description,
  });

  Future<bool> delete(String id);
}

abstract class NotesApi {
  Future<Note> create({
    required String friendId,
    required String description,
  });

  Future<bool> delete(String id);
}

abstract class UsersApi {
  Stream<User> find(String id);
  Future<User> edit({required String id, required String name});
}

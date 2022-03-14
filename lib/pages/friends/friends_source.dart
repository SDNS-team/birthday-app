import 'dart:async';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:rxdart/subjects.dart';

import '../../core/disposable.dart';
import '../../db/friend.dart';

class FriendsListSource implements Disposable {
  FriendsListSource(this._isar);
  final Isar _isar;
  final _subject = BehaviorSubject<List<int>>(sync: true);
  final _paginationSubj = BehaviorSubject<PaginationState>.seeded(
    PaginationState.loading,
    sync: true,
  );

  final _data = <int>[];
  int _total = 0;
  StreamSubscription? _collectionUpdates;

  Query<int> _buildQuery({
    bool offset = false,
    bool limit = false,
    int limitTo = 50,
  }) {
    return _isar.friends
        .where()
        .anyBirthdaySorting()
        .optional(offset, (q) => q.offset(_data.length))
        .optional(limit, (q) => q.limit(limitTo))
        .idMirrorProperty()
        .build();
  }

  Future<void> loadMore() async {
    _collectionUpdates ??=
        _isar.friends.watchLazy().listen((_) => _handleCollectionUpdate());
    if (_paginationSubj.valueOrNull == PaginationState.completed) {
      return;
    }

    _paginationSubj.add(PaginationState.loading);

    final newFriends = await _buildQuery(offset: true, limit: true).findAll();
    _total = await _buildQuery().count();
    _data.addAll(newFriends);
    final hasMore = _data.length < _total;

    _paginationSubj.add(PaginationState(false, hasMore));
    _subject.add(_data);
  }

  Future<void> _handleCollectionUpdate() async {
    final newTotal = await _buildQuery().count();
    if (newTotal != _total) {
      final count = _data.length;
      _data.clear();
      final newFriends =
          await _buildQuery(limit: true, limitTo: count).findAll();
      _data.addAll(newFriends);
      _subject.add(_data);
    }
  }

  Stream<List<int>> data() {
    return _subject;
  }

  Stream<PaginationState> paginationState() {
    return _paginationSubj.distinct();
  }

  @override
  void dispose() {
    _collectionUpdates?.cancel();
    _subject.close();
    _paginationSubj.close();
  }
}

@immutable
class PaginationState {
  const PaginationState(this.isLoading, this.hasMore);
  final bool isLoading;
  final bool hasMore;

  static const loading = PaginationState(true, true);
  static const loadedChunk = PaginationState(false, true);
  static const completed = PaginationState(false, false);

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        (other is PaginationState &&
            isLoading == other.isLoading &&
            hasMore == other.hasMore);
  }

  @override
  int get hashCode => isLoading.hashCode ^ hasMore.hashCode;
}

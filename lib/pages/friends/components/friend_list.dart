import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

import '../../../db/friend.dart';
import '../friends_interactor.dart';
import '../friends_source.dart';

class FriendsList extends StatefulWidget {
  const FriendsList({Key? key, required this.interactor}) : super(key: key);

  final FriendsInteractor interactor;

  @override
  State<FriendsList> createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  late final source = widget.interactor.source();

  @override
  void initState() {
    source.loadMore();
    super.initState();
  }

  @override
  void dispose() {
    source.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isar = widget.interactor.isar;
    return StreamBuilder<PaginationState>(
      stream: source.paginationState(),
      builder: (context, snapshot) {
        final pagination = snapshot.data ?? PaginationState.loading;
        return StreamBuilder<List<int>>(
          stream: source.data(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator.adaptive());
            }
            final friendsIds = snapshot.data ?? [];
            if (friendsIds.isEmpty) {
              return const Center(
                child: Text('Список пуст'),
              );
            }

            return InfiniteList(
              key: GlobalObjectKey(this),
              itemCount: friendsIds.length,
              hasReachedMax: !pagination.hasMore,
              isLoading: pagination.isLoading,
              onFetchData: source.loadMore,
              itemBuilder: (context, index) {
                final id = friendsIds[index];
                return _buildFriend(context, id);
              },
            );
          },
        );
      },
    );
  }

  Widget _buildFriend(BuildContext context, int id) {
    final isar = widget.interactor.isar;
    // ignore_for_file: avoid-non-null-assertion
    final initialFriend = isar.friends.getSync(id)!;
    isar.writeTxnSync<void>((_) => initialFriend.photo.loadSync());
    final initialPhoto = initialFriend.photo.value!;
    final avatarProvider = CachedNetworkImageProvider(initialPhoto.url);

    return StreamBuilder<Friend?>(
      stream: isar.friends.watchObject(id, initialReturn: true),
      initialData: initialFriend,
      builder: (context, snapshot) {
        final friend = snapshot.data;
        if (friend == null) {
          return const ListTile(title: Text('Loading...'));
        }
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 138, 55, 153),
            foregroundImage: avatarProvider,
            radius: 20,
          ),
          title: Text(friend.name),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              await isar.friends.delete(friend.id);
            },
          ), //Text(FormattedDate().full(friend.birthday)),
        );
      },
    );
  }
}

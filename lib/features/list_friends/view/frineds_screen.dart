import 'package:api_mock/api_mock.dart';
import 'package:flutter/material.dart';

import '../../../ui.dart';
import '../../account/account_providers.dart';
import '../../add_friend/view/add_friend_screen.dart';

final friendsListProvider = StreamProvider.autoDispose(
  (ref) {
    final api = ref.watch(apiProvider);
    return api.friends().findMany();
  },
);

class FriendsScreen extends HookConsumerWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          child: const Icon(CupertinoIcons.add),
          onPressed: () => context.go(AddFriendRouteData()),
        ),
      ),
      child: Consumer(
        builder: (context, ref, child) {
          final friends = ref.watch(friendsListProvider);
          return friends.when(
            loading: () => const Center(child: CupertinoActivityIndicator()),
            error: (error, stack) => Center(
              child: Text('$error,\nStack:\n$stack'),
            ),
            data: (list) {
              return Material(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final friend = list[index];
                    return FriendCard(friend: friend);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class FriendCard extends HookConsumerWidget {
  final Friend friend;
  const FriendCard({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = useMemoized(randomColor);
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(
          friend.name.split(' ').map((s) => s[0]).join('').toUpperCase(),
        ),
      ),
      title: Text(friend.name),
      trailing: Text(FormattedDate().full(friend.birthday)),
    );
  }
}

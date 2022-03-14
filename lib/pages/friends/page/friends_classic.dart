import 'package:flutter/material.dart';

import '../components/friend_list.dart';
import '../friends_interactor.dart';

final _pageKey = GlobalKey();

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key, required this.interactor}) : super(key: key);

  final FriendsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _pageKey,
      appBar: _buildAppBar(context),
      body: FriendsList(interactor: interactor),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          interactor.addContact(context);
        },
      ),
      title: const FlutterLogo(),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            interactor.openSettings(context);
          },
        ),
      ],
    );
  }
}

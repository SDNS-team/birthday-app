import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/random_color.dart';
import '../components/friend_list.dart';
import '../friends_interactor.dart';

final _pageKey = GlobalKey();

class FriendsIphone1Page extends StatelessWidget {
  const FriendsIphone1Page({Key? key, required this.interactor})
      : super(key: key);

  final FriendsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      key: _pageKey,
      navigationBar: _buildNavBar(context),
      child: FriendsList(interactor: interactor),
    );
  }

  CupertinoNavigationBar _buildNavBar(BuildContext context) {
    return CupertinoNavigationBar(
      backgroundColor: Colors.white.withOpacity(0.5),
      leading: CupertinoButton(
        child: const Icon(CupertinoIcons.add),
        onPressed: () => interactor.addContact(context),
      ),
      middle: const FlutterLogo(),
      trailing: CupertinoButton(
        child: const Icon(CupertinoIcons.settings),
        onPressed: () => interactor.openSettings(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: randomColor(),
          ),
          title: const Text('Имя Фамилия'),
          trailing: const Text('28.03'),
        );
      },
    );
  }
}

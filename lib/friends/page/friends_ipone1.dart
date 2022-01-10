import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/random_color.dart';
import '../contacts_interactor.dart';

class FriendsIphone1Page extends StatelessWidget {
  const FriendsIphone1Page({Key? key, required this.interactor})
      : super(key: key);

  final FriendsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: _buildAppBar(context),
      child: _buildBody(context),
    );
  }

  CupertinoNavigationBar _buildAppBar(BuildContext context) {
    return CupertinoNavigationBar(
      leading: CupertinoButton(
        child: const Icon(Icons.add),
        onPressed: () {
          interactor.addContact(context);
        },
      ),
      middle: const Text('LOGO'),
      trailing: CupertinoButton(
        child: const Icon(Icons.settings),
        onPressed: () {
          interactor.openSettings(context);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
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

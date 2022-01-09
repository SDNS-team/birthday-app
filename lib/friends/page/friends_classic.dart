import 'package:birthday_app/utils/random_color.dart';
import 'package:flutter/material.dart';

import '../contacts_interactor.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key, required this.interactor}) : super(key: key);

  final FriendsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
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
      title: const Text('LOGO'),
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

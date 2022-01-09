import 'package:flutter/material.dart';

typedef FriendsPageBuilder = Widget Function({
  Key? key,
  required FriendsInteractor interactor,
});

class FriendsInteractor {
  Future<void> addContact(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text('Добавить контакт'),
        ),
      ),
    );
  }

  void openSettings(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text('Страница настроек'),
        ),
      ),
    );
  }
}

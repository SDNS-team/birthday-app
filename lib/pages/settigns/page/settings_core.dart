import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../../components/button.dart';
import '../../../db/friend.dart';
import '../../../db/note.dart';
import '../../../db/photo.dart';
import '../../../db/user.dart';
import '../../../providers.dart';
import '../settings_interactor.dart';

typedef SwitchBuilder = Widget Function(
  bool value,
  ValueChanged<bool> onChanged,
);

class SettingsCore extends ConsumerStatefulWidget {
  const SettingsCore({
    Key? key,
    required this.interactor,
    required this.switchBuilder,
  }) : super(key: key);

  final SettingsInteractor interactor;
  final SwitchBuilder switchBuilder;

  @override
  _SettingsCoreState createState() => _SettingsCoreState();
}

class _SettingsCoreState extends ConsumerState<SettingsCore> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(settingsPageStateHolder);

    return ListView(
      children: [
        ListTile(
          title: const Text('iPhone1'),
          trailing: widget.switchBuilder(
            state.isIphone1Skin,
            (value) => widget.interactor.setSkin(ref, value),
          ),
        ),
        Button.filled(
          child: const Text('Clear Isar'),
          onPressed: () async {
            await widget.interactor.isar.writeTxn((isar) => isar.clear());
            print('done');
          },
        ),
        Button.filled(
          child: const Text('Fill Isar'),
          onPressed: () async {
            await _generateData(widget.interactor.isar);
            print('done');
          },
        ),
        Button.filled(
          child: const Text('Delete Isar (requires app restart)'),
          onPressed: () async {
            final deleted =
                await widget.interactor.isar.close(deleteFromDisk: true);
            print('deleted: $deleted');
          },
        ),
      ],
    );
  }
}

Future<void> _generateData(Isar isar) async {
  final user = User(name: 'Измаил');
  user.photo.value = _photo();

  for (var i = 0; i < 10000; i++) {
    user.friends.add(_friend());
  }

  await isar.writeTxn((isar) async {
    await isar.users.put(user, saveLinks: true);
    await isar.friends.putAll(user.friends.toList(), saveLinks: true);
  });
}

Friend _friend() {
  final random = Random();

  String? phoneCode;
  int? phone;
  if (random.nextBool()) {
    phoneCode = '+${random.nextInt(999)}';
    phone = faker.randomGenerator.integer(4294967296, min: 1000000000);
  }

  final friend = Friend(
    name: faker.person.name(),
    birthday: faker.date.dateTime(minYear: 1930, maxYear: 2022),
    description: random.nextBool()
        ? faker.lorem.sentences(random.nextInt(3)).join('\n')
        : null,
    phoneCode: phoneCode,
    phone: phone,
  );
  friend.photo.value = _photo();

  for (var i = 0; i < random.nextInt(3); i++) {
    friend.notes.add(_note());
  }

  return friend;
}

Note _note() {
  return Note(
    title: faker.conference.name(),
    description: faker.lorem.sentence(),
  );
}

Photo _photo() {
  final keywords = [
    'person',
    'avatar',
    'dog',
    'baloon',
    'nature',
    'man',
    'women',
    'alien',
    'car',
    'toy',
  ];

  return Photo(
    url: faker.image.image(
      keywords: [
        faker.randomGenerator.element(keywords),
        faker.randomGenerator.element(keywords),
      ],
    ),
  );
}

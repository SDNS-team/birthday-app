import 'package:birthday_app/providers.dart';
import 'package:birthday_app/settigns/settings.dart';
import 'package:birthday_app/settigns/settings_interactor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({Key? key, required this.interactor}) : super(key: key);
  final SettingsInteractor interactor;

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  bool isIPhoneSkin = false;

  @override
  void didChangeDependencies() {
    final settings = ref.watch(settingsStateProvider);
    isIPhoneSkin = settings.skin == Skin.iphone1;
    super.didChangeDependencies();
  }

  void changeSkin(bool value) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));

    widget.interactor.setSkin(
      ref,
      value ? Skin.iphone1 : Skin.classic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('iPhone1'),
          trailing: Switch(
            value: isIPhoneSkin,
            onChanged: (value) {
              setState(() {
                isIPhoneSkin = value;
              });
              changeSkin(value);
            },
          ),
        ),
      ],
    );
  }
}

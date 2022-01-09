import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers.dart';
import '../settings.dart';
import '../settings_interactor.dart';

class SettingsIphone1Page extends ConsumerStatefulWidget {
  const SettingsIphone1Page({Key? key, required this.interactor})
      : super(key: key);
  final SettingsInteractor interactor;

  @override
  _SettingsIphone1PageState createState() => _SettingsIphone1PageState();
}

class _SettingsIphone1PageState extends ConsumerState<SettingsIphone1Page> {
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
          trailing: CupertinoSwitch(
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

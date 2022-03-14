import 'package:flutter/cupertino.dart';

import '../settings_interactor.dart';
import 'settings_core.dart';

class SettingsIphone1Page extends StatelessWidget {
  const SettingsIphone1Page({Key? key, required this.interactor})
      : super(key: key);
  final SettingsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return SettingsCore(
      interactor: interactor,
      switchBuilder: (value, onChanged) => CupertinoSwitch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}

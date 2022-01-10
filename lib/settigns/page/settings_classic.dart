import 'package:flutter/material.dart';

import '../settings_interactor.dart';
import 'settings_core.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key, required this.interactor}) : super(key: key);
  final SettingsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return SettingsCore(
      interactor: interactor,
      switchBuilder: (value, onChanged) => Switch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}

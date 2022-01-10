import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers.dart';
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
      ],
    );
  }
}

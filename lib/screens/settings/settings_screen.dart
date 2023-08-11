import 'package:flutter/material.dart';

import '../../features/account/account_providers.dart';
import '../../ui/ui.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LogoutButton(),
          const SizedBox(height: 16),
          Consumer(
            builder: (context, ref, child) {
              final tokens = ref.watch(tokensProvider);
              return tokens.when(
                data: (t) => SelectableText(t.toString()),
                error: (e, st) => Text('$e\n$st'),
                loading: () => const CupertinoActivityIndicator(),
              );
            },
          )
        ],
      ),
    );
  }
}

class LogoutButton extends ConsumerWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoButton.filled(
      child: const Text('Выйти вон 🚪'),
      onPressed: () async {
        await ref.read(loginInteractorProvider).logout();
      },
    );
  }
}

import 'dart:math';

import '../../../features/account/account_providers.dart';
import '../../../screens/home/home_screen.dart';
import '../../../ui/ui.dart';

final _addFriendInteractorProvider =
    Provider.autoDispose((ref) => AddFriendInteractor(ref.read));

class AddFriendRouteData extends TypedRouteData {
  @override
  String name() => 'add_friend';

  // добавлять друга можем только с вкладки "друзья"
  @override
  TypedParamsBuilder get path => const HomeRouteData(HomeTab.friends).path;
}

class AddFriendScreen extends HookConsumerWidget {
  const AddFriendScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final interactor = ref.watch(_addFriendInteractorProvider);
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              onPressed: interactor.submitRundom,
              child: const Text('Create Rundom Friend'),
            ),
            CupertinoButton(
              onPressed: context.pop,
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddFriendInteractor {
  final Reader _read;
  const AddFriendInteractor(this._read);

  Future<void> submit({
    required String name,
    required DateTime birthday,
    String? description,
  }) async {
    final api = await _read(apiProvider.future);
    await api.friends().create(
          name: name,
          birthday: birthday,
          description: description,
        );
  }

  Future<void> submitRundom() async {
    final random = Random();
    await submit(
      name: 'Frank Senatra',
      birthday: DateTime(
        random.nextInt(2022),
        random.nextInt(12),
        random.nextInt(29),
      ),
      description: 'Hey, sup?',
    );
  }
}

import 'package:core/core.dart';

import '../ui.dart';

/// Memoized that disposes it's value automatically
T useDisposable<T>(T Function() builder, void Function(T) dispose) {
  final value = useMemoized(builder);
  return use(_DisposableHook(Disposable.fromValue<T>(value, dispose)));
}

class _DisposableHook<T> extends Hook<T> {
  final FromDisposable _disposable;
  const _DisposableHook(this._disposable);

  @override
  _DisposableHookState<T> createState() => _DisposableHookState();
}

class _DisposableHookState<T> extends HookState<T, _DisposableHook<T>> {
  @override
  T build(BuildContext context) {
    return hook._disposable.value;
  }

  @override
  void dispose() {
    hook._disposable.dispose();
  }
}

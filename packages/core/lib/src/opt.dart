import 'exception/chained_exception.dart';

abstract class Opt<T extends Object> {
  const factory Opt.empty() = _Empty;
  const factory Opt.value(T value) = _Value;
  const factory Opt.any(T? value) = _Any;

  bool has();
  T get();
  T? nullable();
  T valueOrDefault(T def);

  static ChainedException _illegalAccess() => ChainedException.origin(
        'Opt.get() has been called without verifying that Opt.has() returned true!',
      );
}

class _Empty<T extends Object> implements Opt<T> {
  const _Empty();

  @override
  bool has() => false;

  @override
  T get() => throw Opt._illegalAccess();

  @override
  T? nullable() => null;

  @override
  T valueOrDefault(T def) => def;
}

class _Value<T extends Object> implements Opt<T> {
  final T _value;
  const _Value(this._value);

  @override
  bool has() => true;

  @override
  T get() => _value;

  @override
  T? nullable() => _value;

  @override
  T valueOrDefault(T def) => _value;
}

class _Any<T extends Object> implements Opt<T> {
  final T? _value;
  const _Any(this._value);

  @override
  bool has() => _value != null;

  @override
  T get() => has() ? _value! : throw Opt._illegalAccess();

  @override
  T? nullable() => _value;

  @override
  T valueOrDefault(T def) => _value ?? def;
}

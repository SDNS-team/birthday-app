import 'package:meta/meta.dart';

abstract class Disposable {
  static FromDisposable<T> fromValue<T>(T value, void Function(T) dispose) =>
      FromDisposable<T>(value, dispose);

  @mustCallSuper
  void dispose();
}

class FromDisposable<T> implements Disposable {
  final T _value;
  final void Function(T) _dispose;

  const FromDisposable(this._value, this._dispose);

  T get value => _value;

  @override
  void dispose() {
    _dispose(value);
  }
}

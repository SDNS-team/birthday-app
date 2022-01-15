import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'skins/skin_builder.dart';
import 'skins/widget_skins.dart';

abstract class Button extends StatelessWidget {
  const Button._({Key? key}) : super(key: key);

  const factory Button.filled({
    Key? key,
    required Widget child,
    required VoidCallback? onPressed,
  }) = _FilledButton;

  const factory Button.text({
    Key? key,
    required Widget child,
    required VoidCallback? onPressed,
  }) = _TextButton;

  const factory Button.icon({
    Key? key,
    required Widget icon,
    required VoidCallback? onPressed,
  }) = _IconButton;
}

class _FilledButton extends Button {
  const _FilledButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super._(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SkinnedBuilder(
      skins: SafeSkinGetter(
        classic: (context) => ElevatedButton(
          onPressed: onPressed,
          child: child,
        ),
        iphone1: (context) => CupertinoButton.filled(
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}

class _TextButton extends Button {
  const _TextButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super._(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SkinnedBuilder(
      skins: SafeSkinGetter(
        classic: (context) => TextButton(
          onPressed: onPressed,
          child: child,
        ),
        iphone1: (context) => CupertinoButton(
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}

class _IconButton extends Button {
  const _IconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super._(key: key);

  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SkinnedBuilder(
      skins: SafeSkinGetter(
        classic: (context) => IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
        iphone1: (context) => CupertinoButton(
          onPressed: onPressed,
          child: icon,
        ),
      ),
    );
  }
}

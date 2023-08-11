import 'package:flutter/cupertino.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key, required this.routeName}) : super(key: key);

  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('¯_(ツ)_/¯'),
      ),
      child: Center(
        child: Text(
          'Oops..\nPage $routeName was not found',
          style: const TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}

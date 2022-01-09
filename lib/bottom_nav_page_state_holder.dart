import 'package:state_notifier/state_notifier.dart';

class BottomNavPageIndexStateHolder extends StateNotifier<int> {
  BottomNavPageIndexStateHolder(int state) : super(state);

  void navigateTo(int index) => state = index;
}

import '../../ui/ui.dart';
import '../frineds_list/frineds_screen.dart';
import '../settings/settings_screen.dart';

class HomeRouteData extends TypedRouteData {
  final HomeTab tab;
  const HomeRouteData(this.tab);
  HomeRouteData.fromState(GoRouterState state)
      : tab = HomeTab.fromName(state.typedParams.pathString('tab'));

  @override
  TypedParamsBuilder get path =>
      TypedParamsBuilder()..withParam('tab', tab.name);

  @override
  String name() => 'home';

  int get index => tab.index;
}

enum HomeTab {
  calendar,
  friends,
  settings;

  factory HomeTab.fromName(String name) {
    return HomeTab.values.singleWhere((v) => v.name == name);
  }

  @override
  String toString() => name;
}

class HomeScreen extends StatefulWidget {
  final int tabIndex;
  const HomeScreen({Key? key, required this.tabIndex}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final CupertinoTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CupertinoTabController(initialIndex: widget.tabIndex);
  }

  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.index = widget.tabIndex;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _controller,
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_square_stack),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
        onTap: (index) => context.go(HomeRouteData(HomeTab.values[index])),
      ),
      tabBuilder: (context, index) {
        final tab = HomeTab.values[index];
        switch (tab) {
          case HomeTab.calendar:
            return Container();
          case HomeTab.friends:
            return const FriendsScreen();
          case HomeTab.settings:
            return const SettingsScreen();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../widgets/app_bar_icons.dart';
import 'home_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: AppBarIcons(icon: Icons.menu),
        ),
        actions: const [
          AppBarIcons(icon: Icons.search),
          SizedBox(width: 6.0),
          AppBarIcons(icon: Icons.notifications),
          SizedBox(width: 6.0),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[const Text('This is the Drawer')],
          ),
        ),
      ),
      body: PersistentTabView(
        controller: _controller,
        tabs: [
          PersistentTabConfig(
            screen: const HomePage(),
            item: ItemConfig(
              icon: const Icon(Icons.home_outlined),
              title: "Home",
              activeForegroundColor: Colors.blue,
              inactiveForegroundColor: Colors.grey,
            ),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: ItemConfig(
              icon: const Icon(Icons.bookmark_border_outlined),
              title: "Bookmarks",
              activeForegroundColor: Colors.blue,
              inactiveForegroundColor: Colors.grey,
            ),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: ItemConfig(
              icon: const Icon(Icons.person_outline),
              title: "Profile",
              activeForegroundColor: Colors.blue,
              inactiveForegroundColor: Colors.grey,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: false,
        navBarHeight: kBottomNavigationBarHeight,
        margin: const EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        onWillPop: (context) async {
          await showDialog(
            context: context,
            useSafeArea: true,
            builder: (context) => Container(
              height: 50.0,
              width: 50.0,
              color: Colors.white,
              child: ElevatedButton(
                child: const Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
          return false;
        },
        screenTransitionAnimation: const ScreenTransitionAnimation(
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}

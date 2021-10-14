import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/screens/audioBookScreen.dart';
import 'package:e_library_mobile/screens/bookmarkScreen.dart';
import 'package:e_library_mobile/screens/homeScreen.dart';
import 'package:e_library_mobile/screens/searchScreen.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController();
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SlidingClippedNavBar(
          backgroundColor: ColorTheme.bottomBar,
          barItems: barItems,
          inactiveColor: ColorTheme.bottomInactive,
          selectedIndex: selectedIndex,
          onButtonPressed: (val) {
            setState(() {
              selectedIndex = val;
            });
            _pageController.animateToPage(selectedIndex,
                duration: Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          activeColor: ColorTheme.bottomActive),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          SearchScreen(),
          BookmarkScreen(),
          AudioBookScreen()
        ],
      ),
    );
  }
}

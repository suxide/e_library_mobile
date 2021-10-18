import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/screens/audioBookScreen.dart';
import 'package:e_library_mobile/screens/bookmarkScreen.dart';
import 'package:e_library_mobile/screens/homeScreen.dart';
import 'package:e_library_mobile/screens/searchScreen.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController();
  ValueNotifier<int> _activeIndexVal = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _activeIndexVal,
      builder: (BuildContext context, int _activeIndex, Widget? child) {
        return Scaffold(
          bottomNavigationBar: Container(
            height: 70,
            child: SlidingClippedNavBar(
                backgroundColor: ColorTheme.bottomBar,
                barItems: barItems,
                inactiveColor: ColorTheme.bottomInactive,
                selectedIndex: _activeIndex,
                onButtonPressed: (val) {
                  _activeIndexVal.value = val;
                  _activeIndex = _activeIndexVal.value;
                  _pageController.animateToPage(_activeIndex,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeOutQuad);
                },
                activeColor: ColorTheme.bottomActive),
          ),
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
      },
    );
  }
}

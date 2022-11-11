import 'package:cricbuzz/screens/dashboard/DashboardScreen.dart';
import 'package:cricbuzz/screens/more/more_screen.dart';
import 'package:flutter/material.dart';
import '../../Utils/Colors.dart';
import '../matches/matches_screen.dart';
import '../news/news_screen.dart';
import '../video/videos_screen.dart';

class BottomNavScreen extends StatefulWidget {
  final int intCurIndex;
  const BottomNavScreen({Key? key, required this.intCurIndex}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    const DashBoardScreen(),
    const MatchesScreen(),
    const VideosScreen(),
    const NewsScreen(),
    const MoreScreen(),
  ];
  int _currentIndex = 0;
  final List _label = [
    "Home",
    "Matches",
    "Videos",
    "News",
    "More",
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.intCurIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 10.0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.whiteColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.closeIconColor,
          selectedItemColor: AppColors.blackTextColor,
          unselectedIconTheme: const IconThemeData(
            color: AppColors.closeIconColor,
          ),
          selectedLabelStyle: const TextStyle(
              color: AppColors.blackTextColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              fontStyle: FontStyle.normal,
              fontFamily: "RobotoSlabMedium"
          ),
          selectedIconTheme: const IconThemeData(
              color: AppColors.blackTextColor
          ),
          unselectedLabelStyle: const TextStyle(
              color: AppColors.closeIconColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              fontStyle: FontStyle.normal,
              fontFamily: "RobotoSlabMedium"
          ),
          elevation: 20.0,
          items: [Icons.home, Icons.sports_cricket_rounded, Icons.play_circle_outline, Icons.newspaper, Icons.more_vert]
              .asMap()
              .map((key, value) => MapEntry(key,
            BottomNavigationBarItem(
              label: _label[key],
              icon: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 8.0,
                ),
                child: Icon(value),
              ),
            ),
          )).values.toList(),
        ),
      ),
    );
  }
}
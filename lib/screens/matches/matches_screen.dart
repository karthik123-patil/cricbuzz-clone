import 'package:cricbuzz/screens/matches/components/matches_appbar.dart';
import 'package:cricbuzz/screens/matches/recent_matches.dart';
import 'package:cricbuzz/screens/matches/upcoming_matches.dart';
import 'package:cricbuzz/utils/box_decoration.dart';
import 'package:flutter/material.dart';

import 'live_cricket_matches.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: const MatchesAppBar(),
        body: SafeArea(
          child: Container(
              decoration: AppWidgets.backgroundDecoration(context),
              child: const TabBarView(
                children: [
                  LiveCricketMatches(),
                  UpcomingMatchesScreen(),
                  RecentMatches(),
                ],
              )),
        ),
      ),
    );
  }
}









import 'package:cricbuzz/Utils/Colors.dart';
import 'package:cricbuzz/screens/dashboard/components/match_info_appbar.dart';
import 'package:cricbuzz/screens/dashboard/live_match_screen.dart';
import 'package:cricbuzz/utils/box_decoration.dart';
import 'package:flutter/material.dart';

class MatchInfoScreen extends StatefulWidget {
  const MatchInfoScreen({Key? key}) : super(key: key);

  @override
  State<MatchInfoScreen> createState() => _MatchInfoScreenState();
}

class _MatchInfoScreenState extends State<MatchInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor.withOpacity(0.92),
        appBar: MatchInfoAppbar(),
        body: SafeArea(
          child: Container(
              decoration: AppWidgets.backgroundDecoration(context),
              child: const TabBarView(
                children: [
                  LiveMatchScreen(),
                  LiveMatchScreen(),
                  LiveMatchScreen(),
                  LiveMatchScreen(),
                  LiveMatchScreen(),
                  LiveMatchScreen(),
                ],
              )),
        ),
      ),
    );
  }
}

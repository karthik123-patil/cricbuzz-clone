import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Colors.dart';

class MatchesAppBar extends StatefulWidget with PreferredSizeWidget{
  const MatchesAppBar({Key? key}) : super(key: key);

  @override
  State<MatchesAppBar> createState() => _MatchesAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _MatchesAppBarState extends State<MatchesAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.appSubColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text( "Current Matches",
            style:TextStyle(
                color: AppColors.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),)
        ],
      ),
      bottom: const TabBar(
        indicatorColor: AppColors.whiteColor,
        labelStyle: txtStyle.tabTextStyle,
        labelColor: AppColors.whiteColor,
        unselectedLabelColor: Colors.white60,
        unselectedLabelStyle: txtStyle.tabTextStyle,
        tabs: [
          Tab(
            text: 'LIVE',
          ),
          Tab(
            text: 'UPCOMING',
          ),
          Tab(
            text: 'RECENT',
          ),
        ],
      ),
    );
  }
}

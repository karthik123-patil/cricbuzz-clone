import 'package:cricbuzz/Utils/Colors.dart';
import 'package:cricbuzz/screens/bottom/bottom_navigation.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

class MatchInfoAppbar extends StatefulWidget with PreferredSizeWidget{
  const MatchInfoAppbar({Key? key}) : super(key: key);

  @override
  State<MatchInfoAppbar> createState() => _MatchInfoAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _MatchInfoAppbarState extends State<MatchInfoAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appSubColor,
      leading: IconButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BottomNavScreen(intCurIndex: 0)));
        },
        icon: Icon(Icons.arrow_back, color: AppColors.whiteColor,),
      ),
      centerTitle: false,
      title: Text(
          "IND v PAK",
        style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
      ),
      actions: [
        Icon(Icons.share, color: AppColors.whiteColor,),
        SizedBox(width: 30,),
        Icon(Icons.more_vert, color: AppColors.whiteColor,),
        SizedBox(width: 10,),
      ],
      bottom: const TabBar(
        isScrollable: true,
        indicatorColor: AppColors.whiteColor,
        labelStyle: txtStyle.tabTextStyle,
        labelColor: AppColors.whiteColor,
        unselectedLabelColor: Colors.white60,
        unselectedLabelStyle: txtStyle.tabTextStyle,
        tabs: [
          Tab(
            text: 'INFO',
          ),
          Tab(
            text: 'LIVE',
          ),
          Tab(
            text: 'SCORECARD',
          ),
          Tab(
            text: 'SQUADS',
          ),
          Tab(
            text: 'OVERS',
          ),
          Tab(
            text: 'HIGHLIGHTS',
          ),
        ],
      ),
    );
  }
}

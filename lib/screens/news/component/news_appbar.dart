import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Colors.dart';

class NewsAppBar extends StatefulWidget with PreferredSizeWidget{
  const NewsAppBar({Key? key}) : super(key: key);

  @override
  State<NewsAppBar> createState() => _NewsAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _NewsAppBarState extends State<NewsAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.appSubColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text( "News",
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
        physics: ScrollPhysics(),
        isScrollable: true,
        tabs: [
          Tab(
            text: 'ALL STORIES',
          ),
          Tab(
            text: 'CRICBUZZ PLUS',
          ),
          Tab(
            text: 'CATEGORIES',
          ),
          Tab(
            text: 'TOPICS',
          ),
        ],
      ),
    );
  }
}

import 'package:cricbuzz/Utils/Colors.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.whiteColor,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            ListTile(
              title: Text("News", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("All the latest that is news - breaking of otherwise", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Editor's Picks", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("The best stories hand-picked by the Cricbuzz editorial team.", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Editorial", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("The stories that are published by one of Cricbuzz's editors", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Specials", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Special stories that do not fall under any particular theme or topic", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Reports", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Looking back at the action with delightful insights, stats, analysis and player comments.", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Previews", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("All you need to know before the action starts - Info, pitch report, teams' strengths and weaknesses, squad....", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Statistics & Analysis", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Numbers for needs, statistical nugggets for the rest of us. Cricket's about numbers, people.", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Live Blogs", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Up to the minute, real-time coverage of live events like the IPL auctions, breaking news and matches", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: Text("Tour Diaries", style:TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
              subtitle: Text("Random ramblings from the guys on tour covering cricket matches. Informal & enjoyable", style:TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
            ),
          ],
        ),
      ),
    );
  }
}

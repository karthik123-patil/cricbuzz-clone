import 'package:cricbuzz/Utils/Colors.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../../utils/strings.dart';

class AllStoriesScreen extends StatefulWidget {
  const AllStoriesScreen({Key? key}) : super(key: key);

  @override
  State<AllStoriesScreen> createState() => _AllStoriesScreenState();
}

class _AllStoriesScreenState extends State<AllStoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.whiteColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Card(
              color: AppColors.whiteColor,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(0),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/205x152/i1/c244085/india-won-the-toss-and-elected.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strLive, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                    subtitle: const Text("2 hrs ago", style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strLive1),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/205x152/i1/c244075/chantham-scored-61-off-51-in-h.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strAllStories, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                    subtitle: const Text("4 hrs ago", style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strAllStories1),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/205x152/i1/c244071/sophie-devine-hit-2-sixes-in-t.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strAllStories2, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                    subtitle: const Text("6 hrs ago", style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strAllStories3),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/205x152/i1/c244070/australia-wants-its-players-f.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strAllStories4, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                    subtitle: const Text("9 hrs ago", style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strAllStories5),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/205x152/i1/c244069/south-africa-are-currently-abo.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strAllStories6, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                    subtitle: const Text("18 hrs ago", style:TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strAllStories7),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

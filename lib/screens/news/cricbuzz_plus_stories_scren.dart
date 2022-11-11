import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';
import '../../utils/strings.dart';

class CricBuzzPlusStories extends StatefulWidget {
  const CricBuzzPlusStories({Key? key}) : super(key: key);

  @override
  State<CricBuzzPlusStories> createState() => _CricBuzzPlusStoriesState();
}

class _CricBuzzPlusStoriesState extends State<CricBuzzPlusStories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.whiteColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("2 days ago", style: TextStyle(
                    color: Colors.grey
                  ),),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://www.cricbuzz.com/a/img/v1/420x235/i1/c243919/the-spin-advantage-in-womens.jpg',
                    fit: BoxFit.fill,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strCircbuzzPlus, style: txtStyle.matchTextStyle,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strCircbuzzPlus1),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/205x152/i1/c243762/south-african-cricket-once-had.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strCircbuzzPlus2, style:TextStyle(
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
                        Text(ConstantStrings.strCircbuzzPlus3),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/205x152/i1/c243018/an-innovation-revived-south-af.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strCircbuzzPlus4, style:TextStyle(
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
                        Text(ConstantStrings.strCircbuzzPlus5),
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

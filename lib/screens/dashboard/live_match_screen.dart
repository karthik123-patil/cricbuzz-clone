import 'package:cricbuzz/utils/strings.dart';
import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';
class LiveMatchScreen extends StatefulWidget {
  const LiveMatchScreen({Key? key}) : super(key: key);

  @override
  State<LiveMatchScreen> createState() => _LiveMatchScreenState();
}

class _LiveMatchScreenState extends State<LiveMatchScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      "IND",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: 40,),
                    Text(
                      "200-8 (20)",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],),
                  Row(children: [
                    Text(
                      "PAK",
                      style: TextStyle(
                          color: AppColors.blackColor.withOpacity(0.7),
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: 40,),
                    Text(
                      "138-10 (19.3)",
                      style: TextStyle(
                          color: AppColors.blackColor.withOpacity(0.7),
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],),
                  SizedBox(height: 10,),
                  Text(
                    "India won by 62 runs",
                    style: TextStyle(
                        color: AppColors.blueColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.blackColor.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "PLAYER OF THE MATCH",
                    style: TextStyle(
                        color: AppColors.blackColor.withOpacity(0.5),
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.closeIconColor,
                backgroundImage: AssetImage(
                  "assets/images/vk.webp"
                ),
              ),
              title: Text(
                "Virat Kholi",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Divider(
              color: AppColors.blackColor.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "PLAYER OF THE SERIES",
                    style: TextStyle(
                        color: AppColors.blackColor.withOpacity(0.5),
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.closeIconColor,
                backgroundImage: AssetImage(
                    "assets/images/vk.webp"
                ),
              ),
              title: Text(
                "Virat Kholi",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Divider(
              color: AppColors.blackColor.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                        "Virat Kohli | Player of the Match: ",
                        style:TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      TextSpan(
                        text: ConstantStrings.strViratSpeech,
                        style: TextStyle(color: AppColors.blackColor,fontSize: 16,),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                        "KL Rahul | Winning captain: ",
                        style:TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      TextSpan(
                        text: ConstantStrings.strRahulSpeech,
                        style: TextStyle(color: AppColors.blackColor,fontSize: 16,),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                        "Babar Azam | Losing captain: ",
                        style:TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      TextSpan(
                        text: ConstantStrings.strNabiSpeech,
                        style: TextStyle(color: AppColors.blackColor,fontSize: 16,),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                        "Bhuvneshwar Kumar (4-1-4-5) - ",
                        style:TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      TextSpan(
                        text: ConstantStrings.strBhuviSpeech,
                        style: TextStyle(color: AppColors.blackColor,fontSize: 16,),
                      ),
                    ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "STAT: Biggest defeat by runs for Pakistan",
                  textAlign: TextAlign.start,
                  style:TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
                Text(
                  "116 vs Eng Colombo RPS 2012",
                  style:TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 16,),
                ),
                Text(
                  "101 vs Ind Dubai 2022 *",
                  style:TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,),
                ),
                Text(
                  "68 vs Ire Abu Dhabi 2013",
                  style:TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,),
                ),
                Text(
                  "66 vs Ind Abu Dhabi 2021",
                  style:TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

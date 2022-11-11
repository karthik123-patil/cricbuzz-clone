import 'package:cricbuzz/screens/bottom/bottom_navigation.dart';
import 'package:cricbuzz/screens/data/datas.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../dashboard/DashboardScreen.dart';

class LatestNewsDescScreen extends StatefulWidget {
  const LatestNewsDescScreen({Key? key}) : super(key: key);

  @override
  State<LatestNewsDescScreen> createState() => _LatestNewsDescScreenState();
}

class _LatestNewsDescScreenState extends State<LatestNewsDescScreen> {
  List latestNews = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      latestNews = ResponseData().latestStoriesDetail;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.whiteColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(latestNews[0]['bgImg']),
                    fit: BoxFit.fill
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: 10,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white, size: 25,),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BottomNavScreen(intCurIndex: 0)));
                        },
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(Icons.share , color: Colors.white, size: 25,),
                        onPressed: (){
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(latestNews[0]['title'], style: txtStyle.matchTextStyle,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(latestNews[0]['Desc'], style:const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(latestNews[0]['Desc2'], style:const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(latestNews[0]['Desc3'], style:const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        text:   TextSpan(
                            children: [
                              TextSpan(
                                text:
                                latestNews[0]['squad'] + "\t\t",
                                style:const TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal),
                              ),
                              TextSpan(
                                text: latestNews[0]['teams'],
                                style: const TextStyle(color: AppColors.blackColor,),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:cricbuzz/screens/cricbuzz_plus/subscribe_screen.dart';
import 'package:cricbuzz/utils/strings.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';
import '../data/datas.dart';
import '../news/latest_news_desc_screen.dart';

class CricBuzzPlusScreen extends StatefulWidget {
  const CricBuzzPlusScreen({Key? key}) : super(key: key);

  @override
  State<CricBuzzPlusScreen> createState() => _CricBuzzPlusScreenState();
}

class _CricBuzzPlusScreenState extends State<CricBuzzPlusScreen> {
  List trendingVideos = [];
  List featuredList = [];
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async{
      setState(() {
        trendingVideos = ResponseData().trendingVideos;
        featuredList = ResponseData().featuredVideos;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.appSubColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Cricbuzz Plus + Times Prime",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2
                              ),
                            ),
                            Text(
                              "ANNUAL COMBO PLAN",
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.yellowColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Get 15 Subscriptions with 1 Plan save INR 10000!",
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        color: AppColors.yellowColor,
                        image: DecorationImage(
                          image: AssetImage("assets/images/hero_plan.webp"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubscribeScreen()));
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.appSubColor,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Unlock Now For INR 99",
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.2
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    ConstantStrings.strTrending,
                    textAlign: TextAlign.left,
                    style: txtStyle.matchTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                primary: false,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: trendingVideos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: trendingVideos[index]['videoUrl'], strVideoDesc: trendingVideos[index]['title'],)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: trendingVideos[index]['videoUrl'], strVideoDesc: trendingVideos[index]['title'])));
                                  },
                                  child: Container(
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius:const  BorderRadius.only(topLeft: Radius.circular(5), topRight:   Radius.circular(4)),
                                      color: Colors.white,
                                      image: DecorationImage(
                                        //image: AssetImage("assets/images/film.jpeg"),
                                          image: NetworkImage(trendingVideos[index]['bgImg']),
                                          fit: BoxFit.cover),
                                    ),
                                    height: 175,
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Row(
                                    children:  [
                                      Expanded(
                                        child: Padding(
                                          padding:const EdgeInsets.all(2.0),
                                          child: Text(
                                            trendingVideos[index]['title'],
                                            maxLines: 2,
                                            style: txtStyle.matchStatusStyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Positioned(
                              top: 10,
                              right: 10,
                              child: CircleAvatar(
                                backgroundColor: AppColors.appSubColor,
                                radius: 10,
                                child: Icon(Icons.star, color: AppColors.whiteColor, size: 15,),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    ConstantStrings.strFeaturedVideos,
                    textAlign: TextAlign.left,
                    style: txtStyle.matchTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                primary: false,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: featuredList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: trendingVideos[index]['videoUrl'], strVideoDesc: trendingVideos[index]['title'],)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: trendingVideos[index]['videoUrl'], strVideoDesc: trendingVideos[index]['title'])));
                                  },
                                  child: Container(
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius:const  BorderRadius.only(topLeft: Radius.circular(5), topRight:   Radius.circular(4)),
                                      color: Colors.white,
                                      image: DecorationImage(
                                        //image: AssetImage("assets/images/film.jpeg"),
                                          image: NetworkImage(featuredList[index]['bgImg']),
                                          fit: BoxFit.cover),
                                    ),
                                    height: 175,
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Row(
                                    children:  [
                                      Expanded(
                                        child: Padding(
                                          padding:const EdgeInsets.all(2.0),
                                          child: Text(
                                            featuredList[index]['title'],
                                            maxLines: 2,
                                            style: txtStyle.matchStatusStyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Positioned(
                              top: 10,
                              right: 10,
                              child: CircleAvatar(
                                backgroundColor: AppColors.appSubColor,
                                radius: 10,
                                child: Icon(Icons.star, color: AppColors.whiteColor, size: 15,),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LatestNewsDescScreen()));
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("SA TOUR OF INDIA, 2022", style: txtStyle.matchHeadingTxt,),
                        ),
                      ],
                    ),
                    Image.network(
                      'https://www.cricbuzz.com/a/img/v1/595x396/i1/c243562/both-the-players-havent-trave.jpg',
                      fit: BoxFit.fill,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(ConstantStrings.strLatestTxt1, style: txtStyle.matchTextStyle,),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(ConstantStrings.strLatestTxt),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

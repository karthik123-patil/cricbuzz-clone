import 'package:carousel_slider/carousel_slider.dart';
import 'package:cricbuzz/repository/RepoProvider.dart';
import 'package:cricbuzz/screens/cricbuzz_plus/cricbuzz_plus_screen.dart';
import 'package:cricbuzz/screens/dashboard/match_info_screen.dart';
import 'package:cricbuzz/screens/data/datas.dart';
import 'package:cricbuzz/screens/news/latest_news_desc_screen.dart';
import 'package:cricbuzz/screens/video/play_video_screen.dart';
import 'package:cricbuzz/utils/colors.dart';
import 'package:cricbuzz/utils/strings.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';
import '../../utils/box_decoration.dart';
import 'components/DashboardAppBar.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: DashboardAppBar(),
        body: SafeArea(
          child: Container(
              decoration: AppWidgets.backgroundDecoration(context),
              child: const TabBarView(
                children: [
                  FeaturedScreen(),
                  CricBuzzPlusScreen(),
                ],
              )),
        ),
      ),
    );
  }
}

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  RepoProvider repoProvider = RepoProvider();
  List matchesData = [];
  List featuredList = [];
  List trendingVideos = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async{
      setState(() {
        matchesData = ResponseData().matchesArray;
        featuredList = ResponseData().featuredVideos;
        trendingVideos = ResponseData().trendingVideos;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.background,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    ConstantStrings.strMatches,
                    textAlign: TextAlign.left,
                    style: txtStyle.matchTextStyle,
                  ),
                ],
              ),
            ),
            CarouselSlider.builder(
              itemCount: matchesData.length,
              options: CarouselOptions(
                height: 200,
                autoPlay: false,
                enlargeCenterPage: false,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 0,
              ),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.lightWhiteColor1,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.closeIconColor,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 1.0,
                        ),
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "2nd Test . South Africa Tour of England 2022",
                              style: txtStyle.matchHeadingText,
                            ),
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.notification_important,
                                  color: AppColors.closeIconColor,
                                )),
                          ],
                        ),
                      ),
                      for (int i = 0;
                          i < matchesData[itemIndex]['teamInfo'].length;
                          i++)
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MatchInfoScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 40.0, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            matchesData[itemIndex]['teamInfo'][i]
                                                    ['img']
                                                .toString(),
                                            scale: 10,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            matchesData[itemIndex]['teamInfo'][i]
                                                    ['shortname']
                                                .toString(),
                                            style: txtStyle.teamNameTextStyle,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                if (matchesData[itemIndex]['score'] != null)
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${matchesData[itemIndex]['score'][i]['r']}-${matchesData[itemIndex]['score'][i]['w']}  (${matchesData[itemIndex]['score'][i]['o']})",
                                            style: txtStyle.runTextStyle,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MatchInfoScreen()));
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 5.0, right: 0, top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                          matchesData[itemIndex]['status']
                                              .toString(),
                                          style: TextStyle(
                                              color: Color(int.parse(
                                                  "0xFF${matchesData[itemIndex]['color']}")),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1,
                                              fontFamily: "RobotoSlabMedium",
                                              fontStyle: FontStyle.normal))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                            color: AppColors.mediumGrey,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Points Table",
                                style: txtStyle.pointsAndScheduleStyle,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Schedule",
                                style: txtStyle.pointsAndScheduleStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: featuredList[index]['videoUrl'], strVideoDesc: featuredList[index]['title'],)));
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
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: featuredList[index]['videoUrl'], strVideoDesc: featuredList[index]['title'],)));
                                  },
                                  child: Container(
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius:const  BorderRadius.only(topLeft: Radius.circular(5), topRight:   Radius.circular(4)),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: NetworkImage(featuredList[index]['bgImg']),
                                          fit: BoxFit.cover),
                                    ),
                                    height: 175,
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Row(
                                    children:   [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
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
                              top: 70,
                              left: 150,
                              child: CircleAvatar(
                                backgroundColor: AppColors.blackColor,
                                child: Icon(Icons.play_arrow, color: AppColors.whiteColor,),
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
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 50,
                      decoration:   BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft:Radius.circular(5) )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset("assets/images/app_logo.png",color: AppColors.whiteColor,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 30,
                      decoration: const BoxDecoration(
                        color: AppColors.appSubColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight:Radius.circular(5) )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(ConstantStrings.strCricBuzzPlus, style: txtStyle.circbuzzPlusStyle,),
                            Icon(Icons.arrow_forward_ios, color: AppColors.whiteColor, size: 15,)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: trendingVideos[index]['videoUrl'], strVideoDesc: trendingVideos[index]['title'],)));
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
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayVideoScreen(strVideoUrl: trendingVideos[index]['videoUrl'], strVideoDesc: trendingVideos[index]['title'])));
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
                              top: 70,
                              left: 150,
                              child: CircleAvatar(
                                backgroundColor: AppColors.blackColor,
                                child: Icon(Icons.play_arrow, color: AppColors.whiteColor,),
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    ConstantStrings.strTopStories,
                    textAlign: TextAlign.left,
                    style: txtStyle.matchTextStyle,
                  ),
                ],
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
            const SizedBox(height: 10,),
            Card(
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
                        child: Text("IND VS AUS, 3RD T20I ", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202209/Suryakumar_Yadav_Virat_Kohli_A_1200x768.jpeg?2_kQ6H0b3JCMpSN5cSPuo_yPFS5vtKpz&size=770:433',
                    fit: BoxFit.fill,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTopStoriesHeading, style: txtStyle.matchTextStyle,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strSeriesTxt),
                  ),
                  const Divider(color: AppColors.closeIconColor,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                    "As it happened - ",
                                    style:TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal),
                                  ),
                                   TextSpan(
                                    text: "India prevail in tense finish",
                                    style: TextStyle(color: AppColors.blackColor,),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  const Divider(color: AppColors.closeIconColor,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTxtRohitBack, style: TextStyle(color: Colors.black, fontSize: 16),),
                  ),
                  const Divider(color: AppColors.closeIconColor,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTxtMcDonald, style: TextStyle(color: Colors.black, fontSize: 16),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Card(
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
                        child: Text("PAK VS ENG, 4TH T20I ", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://www.cricbuzz.com/a/img/v1/420x235/i1/c243504/rauf-and-pakistan-find-a-way-d.jpg',
                    fit: BoxFit.fill,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTxtPakvsEng, style: txtStyle.matchTextStyle,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTxtPak),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Card(
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
                        child: Text("END W VS IND W", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://www.cricbuzz.com/a/img/v1/420x235/i1/c243460/mcc-reminds-non-strikers-to-re.jpg',
                    fit: BoxFit.fill,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTxtIndWvsEngW, style: txtStyle.matchTextStyle,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTxtWomenSubTitle),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Card(
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
                        child: Text("INDIA WOMEN TOUR OF ENGLAND, 2022", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://www.cricbuzz.com/a/img/v1/420x235/i1/c243558/india-send-goswami-off-with-a.jpg',
                    fit: BoxFit.fill,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strTxtIndiaSend, style: txtStyle.matchTextStyle,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strDeptiTxt),
                  ),
                  const Divider(color: AppColors.closeIconColor,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  "Archives - ",
                                  style:TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                                TextSpan(
                                  text: "The Chakdaha Express",
                                  style: TextStyle(color: AppColors.blackColor,),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: AppColors.closeIconColor,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  "Twitter reactions - ",
                                  style:TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                                TextSpan(
                                  text: "'Longevity beyond belief'",
                                  style: TextStyle(color: AppColors.blackColor, fontWeight: FontWeight.w500),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: AppColors.closeIconColor,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strWomensCricket, style: TextStyle(color: Colors.black, fontSize: 16),),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10,),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("NEWS DIGEST", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/135x75/i1/c243557/sandeep-patil-front-runner-to.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strNewsSandeepTxt, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strNewsByteTxt),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("INDIA A VS NEW ZEALAND A, 2ND UNOFFICIAL ODI", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/135x75/i1/c243449/kuldeep-hat-trick-shaw-blitz.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strKuldeepHatTrick, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strPoweredByTxt),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("DULEEP TROPHY FINAL, 2022", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/135x75/i1/c243394/clinical-west-zone-clinch-dule.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strWestZoneTxt, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strWestZoneDescTxt),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("CPL 2022", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/135x75/i1/c243546/guyana-topple-barbados-to-set.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strGuyanaTxt, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(ConstantStrings.strGuyanaDescTxt),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10,),
            Card(
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
                        child: Text("BANGLADESH PREMIER LEAGUE", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/135x75/i1/c243563/future-bpl-editions-could-look.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strLeagueHeading, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strLeagueDesc),
                  ),
                  const Divider(color: AppColors.closeIconColor,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  ConstantStrings.strRangpurTxt,
                                  style:TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Card(
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
                        child: Text("AUSTRALIA DOMESTIC ONE-DAY CUP 2022-23", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/135x75/i1/c243560/south-australia-begin-season-w.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strSouthAustralia, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strSouthAustraliaDesc),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Card(
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
                        child: Text("NEW ZEALAND WOMEN TOUR OF WEST INDIES, 2022", style: txtStyle.matchHeadingTxt,),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://www.cricbuzz.com/a/img/v1/135x75/i1/c243547/bowlers-taylor-matthews-help.jpg',
                      fit: BoxFit.fill,
                    ),
                    title: const Text(ConstantStrings.strWomensHeadingTxt, style:TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(ConstantStrings.strWomensDescTxt),
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



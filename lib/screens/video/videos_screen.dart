import 'package:cricbuzz/Utils/Colors.dart';
import 'package:cricbuzz/screens/video/play_video_screen.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';

import '../data/datas.dart';
class VideosScreen extends StatefulWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  List featuredList = [];
  List playList = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async{
      setState(() {
        featuredList = ResponseData().featuredVideos;
        playList = ResponseData().playListArray;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appSubColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text( "Videos",
              style:TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.lightWhiteColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Column(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 image: DecorationImage(image: AssetImage('assets/images/mic.webp'), fit: BoxFit.fill),
                               ),
                             ),
                             Container(
                               width: 100,
                               child: const Text( "Press Conference",
                                 textAlign: TextAlign.center,
                                 style:TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     fontStyle: FontStyle.normal),),
                             ),
                           ],
                         ),
                         Column(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 image: DecorationImage(image: AssetImage('assets/images/hindi.webp'), fit: BoxFit.fill),
                               ),
                             ),
                             Container(
                               width: 100,
                               child: const Text( "Cricubuzz Live Hindi",
                                 textAlign: TextAlign.center,
                                 style:TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     fontStyle: FontStyle.normal),),
                             ),
                           ],
                         ),
                         Column(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 image: DecorationImage(image: AssetImage('assets/images/hindi.webp'), fit: BoxFit.fill),
                               ),
                             ),
                             Container(
                               width: 100,
                               child: const Text( "Cricubuzz Live Talking",
                                 textAlign: TextAlign.center,
                                 style:TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     fontStyle: FontStyle.normal),),
                             ),
                           ],
                         ),
                         Column(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 image: DecorationImage(image: AssetImage('assets/images/eng_talk.webp'), fit: BoxFit.fill),
                               ),
                             ),
                             Container(
                               width: 100,
                               child: const Text( "Cricubzz Live Talking",
                                 textAlign: TextAlign.center,
                                 style:TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     fontStyle: FontStyle.normal),),
                             ),
                           ],
                         ),
                         Column(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 image: DecorationImage(image: AssetImage('assets/images/live.webp'), fit: BoxFit.fill),
                               ),
                             ),
                             Container(
                               width: 100,
                               child: const Text( "Cricubzz Live",
                                 textAlign: TextAlign.center,
                                 style:TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     fontStyle: FontStyle.normal),),
                             ),
                           ],
                         ),
                         Column(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 image: DecorationImage(image: AssetImage('assets/images/coin.webp'), fit: BoxFit.fill),
                               ),
                             ),
                             Container(
                               width: 100,
                               child: const Text( "Cricubzz Comm Box",
                                 textAlign: TextAlign.center,
                                 style:TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     fontStyle: FontStyle.normal),),
                             ),
                           ],
                         ),
                         Column(
                           children: [
                             Container(
                               width: 50,
                               height: 50,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 image: DecorationImage(image: AssetImage('assets/images/retro.webp'), fit: BoxFit.fill),
                               ),
                             ),
                             Container(
                               width: 100,
                               child: const Text( "Retro Reels",
                                 textAlign: TextAlign.center,
                                 style:TextStyle(
                                     color: Colors.black,
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     fontStyle: FontStyle.normal),),
                             ),
                           ],
                         )
                       ],
                     ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                child: Row(
                  children: const [
                    Text( "LATEST VIDEOS",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal),),
                  ],
                ),
              ),
              SizedBox(
                height: 230,
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
                                      width: 280,
                                      decoration: BoxDecoration(
                                        borderRadius:const  BorderRadius.only(topLeft: Radius.circular(5), topRight:   Radius.circular(4)),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: NetworkImage(featuredList[index]['bgImg']),
                                            fit: BoxFit.cover),
                                      ),
                                      height: 160,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 280,
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
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                child: Row(
                  children: const [
                    Text( "INDIA",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal),),
                  ],
                ),
              ),
              SizedBox(
                height: 230,
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
                                      width: 280,
                                      decoration: BoxDecoration(
                                        borderRadius:const  BorderRadius.only(topLeft: Radius.circular(5), topRight:   Radius.circular(4)),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: NetworkImage(featuredList[index]['bgImg']),
                                            fit: BoxFit.cover),
                                      ),
                                      height: 160,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 280,
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
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                child: Row(
                  children: const [
                    Text( "PLAYLIST",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal),),
                  ],
                ),
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: playList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){},
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
                                    onTap: () {},
                                    child: Container(
                                      width: 280,
                                      decoration: BoxDecoration(
                                        borderRadius:const  BorderRadius.only(topLeft: Radius.circular(5), topRight:   Radius.circular(4)),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: NetworkImage(playList[index]['bgImg']),
                                            fit: BoxFit.cover),
                                      ),
                                      height: 160,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 280,
                                    child: Row(
                                      children:   [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Text(
                                              playList[index]['title'],
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
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

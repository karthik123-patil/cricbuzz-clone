import 'package:chewie/chewie.dart';
import 'package:cricbuzz/screens/bottom/bottom_navigation.dart';
import 'package:cricbuzz/screens/dashboard/DashboardScreen.dart';
import 'package:cricbuzz/screens/data/datas.dart';
import 'package:cricbuzz/utils/colors.dart';
import 'package:cricbuzz/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:video_player/video_player.dart';

class PlayVideoScreen extends StatefulWidget {
  final String strVideoUrl, strVideoDesc;
  const PlayVideoScreen({Key? key, required this.strVideoUrl, required this.strVideoDesc}) : super(key: key);

  @override
  State<PlayVideoScreen> createState() => _PlayVideoScreenState();
}

class _PlayVideoScreenState extends State<PlayVideoScreen> {

  final urlYoutube =
      'https://www.youtube.com/watch?v=E7sz-nz_6wY';
  final urlVideo = 'https://assets.mixkit.co/videos/preview/mixkit-group-of-friends-partying-happily-4640-large.mp4';
  final textController = TextEditingController();
  late VideoPlayerController _controller;
  late ChewieController _chewieController;
  List suggestedVideos = [];
  @override
  void initState() {
    textController.text = urlYoutube;
    _controller = VideoPlayerController.asset(widget.strVideoUrl);
    setState(() {
      _chewieController = ChewieController(
        videoPlayerController: _controller,
        autoInitialize: true,
        autoPlay: true,
        looping: false,
        allowMuting: true,
        allowFullScreen: true,
        useRootNavigator: true,
        zoomAndPan: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      );
      suggestedVideos = ResponseData().suggestedVideos;
    });
    super.initState();
  }

  @override
  void dispose() {
    // _controller.dispose();
    if (_controller.value.isPlaying) _controller.pause();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.whiteColor,
        child: Column(
          children: [
            const SizedBox(height: 35,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: AppColors.blackColor,
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Chewie(
                                controller: _chewieController,
                              ),
                            )
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 10,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 25,),
                          onPressed: (){
                            if (_controller.value.isPlaying) _controller.pause();
                            _chewieController.dispose();
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BottomNavScreen(intCurIndex: 0)));
                          },
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 10,
                        child: IconButton(
                          icon: const Icon(Icons.fullscreen_rounded , color: Colors.white, size: 25,),
                          onPressed: (){
                            _chewieController.enterFullScreen();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.strVideoDesc, style: txtStyle.matchTextStyle,),
                ),
                const Divider(color: AppColors.closeIconColor,),

                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/cms-img.webp"),
                  ),
                  title: Text("Cricbuzz LIVE - Talking Points", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                  subtitle: Text("5135 videos", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.descriptionColor1,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("SUGGESTED VIDEOS", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),),
                  ),
                ),

              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                itemCount: suggestedVideos.length,
                padding: EdgeInsets.all(1),
                itemBuilder: (BuildContext context, int ind) {
                  return Column(
                    children: [
                      Stack(
                        alignment:Alignment.center,
                        children: [
                          ListTile(
                            leading: Image.network(
                              suggestedVideos[ind]['bgImg'],
                            ),
                            title:  Text(suggestedVideos[ind]['title'], style:const TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),),
                          ),
                          const Positioned(
                            left:0,
                            right:245,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: AppColors.blackColor,
                              child: Icon(Icons.play_arrow, color: AppColors.whiteColor,size: 15,),
                            ),
                          )
                          /*const Positioned(
                            top: 30,
                            left:55,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: AppColors.blackColor,
                              child: Icon(Icons.play_arrow, color: AppColors.whiteColor,size: 15,),
                            ),
                          ),*/

                        ],
                      ),
                      const Divider(color: AppColors.closeIconColor,),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

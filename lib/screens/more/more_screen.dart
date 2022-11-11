import 'package:cricbuzz/Utils/Colors.dart';
import 'package:flutter/material.dart';
class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appSubColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text( "More",
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
        color: AppColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    ListTile(
                      leading: Image.asset("assets/images/trophy.png", color: AppColors.blackColor, scale: 18,),
                      title: const Text("Browse Series", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    const Divider(
                      color: Colors.black38,
                    ),
                    const ListTile(
                      leading: Icon(Icons.group, color: AppColors.blackColor,),
                      title: Text("Browse Team", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    const Divider(
                      color: Colors.black38,
                    ),
                    const ListTile(
                      leading: Icon(Icons.person_outline, color: AppColors.blackColor,),
                      title: Text("Browse Player", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.calendar_month, color: AppColors.blackColor,),
                      title: Text("Schedule", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                      leading: Icon(Icons.schedule, color: AppColors.blackColor,),
                      title: Text("Archives", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.games, color: AppColors.blackColor,),
                      title: Text("Games", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.photo_album_outlined, color: AppColors.blackColor,),
                      title: Text("Photos", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.quiz_outlined, color: AppColors.blackColor,),
                      title: Text("Quiz", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.abc_rounded, color: AppColors.blackColor,),
                      title: Text("Quotes", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.close_fullscreen, color: AppColors.blackColor,),
                      title: Text("ICC Rankings - Men", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                      leading: Icon(Icons.close_fullscreen, color: AppColors.blackColor,),
                      title: Text("ICC Rankings - Women", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                      leading: Icon(Icons.insights, color: AppColors.blackColor,),
                      title: Text("Records", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [

                    ListTile(
                      leading: Icon(Icons.book_outlined, color: AppColors.blackColor,),
                      title: Text("ICC World Test Championship", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                      leading: Icon(Icons.book_outlined, color: AppColors.blackColor,),
                      title: Text("ICC World Cup Super League", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.star_border, color: AppColors.blackColor,),
                      title: Text("Rate the App", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                      leading: Icon(Icons.feedback, color: AppColors.blackColor,),
                      title: Text("Feedback", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.settings, color: AppColors.blackColor,),
                      title: Text("Settings", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                    Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                      leading: Icon(Icons.info_outline, color: AppColors.blackColor,),
                      title: Text("About Cricbuzz", style:TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

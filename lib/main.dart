import 'dart:async';
import 'package:cricbuzz/screens/bottom/bottom_navigation.dart';
import 'package:cricbuzz/utils/colors.dart';
import 'package:cricbuzz/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppColors.appSubColor,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      title: 'CricBuzz',
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
        textTheme: const TextTheme(
          headline1: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontFamily: "RobotoSlabBold"),
          headline2: TextStyle(color:Colors.white, fontSize: 14, fontWeight: FontWeight.w500,letterSpacing: 0.2, fontFamily: "RobotoSlabMedium", fontStyle: FontStyle.normal),
          headline3: TextStyle(color:Colors.white38, fontSize: 10, fontWeight: FontWeight.w500,letterSpacing: 0.2, fontFamily: "RobotoSlabLight", fontStyle: FontStyle.normal),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white38,
          border: InputBorder.none,
          hintStyle:  TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(
              vertical: defpaultPadding * 1.2, horizontal: defpaultPadding),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    startApplication();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appSubColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/app_logo.png',
              fit: BoxFit.cover,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }

  void startApplication() async{
    Timer(const Duration(milliseconds: 3000), () async{
      // Get.to(const EmpBottomNavScreen());
      Navigator
          .of(context)
          .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
        return BottomNavScreen(intCurIndex: 0);
      }));
    });
  }
}

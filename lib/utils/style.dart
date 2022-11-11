import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class colorStyle{
 
  static final primaryColor = Color(0xFF45C2DA);
   //static final background = Color(0xFF191B2A);
  static final background = Colors.black;
  //static final background = Color(0xFF0F233D);
  static final cardColorLight = Colors.white;
  static final cardColorDark = Colors.black;
  static final cardColorDark1 = Colors;
  static final fontColorLight = Colors.black;
  static final fontColorDark = Colors.white; 
  static final fontSecondaryColorLight = Colors.black26;
  static final fontSecondaryColor1Light = Colors.black12;
  static final fontSecondaryColorDark = Colors.white24;
  static final iconColorLight = Colors.black;
  static final iconColorDark = Colors.white; 
  static final fontColorDarkTitle = Color(0xFF32353E);
 // static final grayBackground = Color(0xFF172E4D);
  static final grayBackground = Color(0xFF212121);
  static final whiteBacground = Color(0xFFF4F5F7);
    // static final grayBackground = Color(0xFF16223A);
  static final blackBackground = Color(0xFF12151C);
  static final bottomBarDark = Color(0xFF202833);
}

class txtStyle{

  static final headerStyle = TextStyle(
  fontFamily: "Popins",
  fontSize: 21.0,
  fontWeight: FontWeight.w800,
  color: Color(0xFF45C2DA),
  letterSpacing: 1.5
  );
  
  static  const  descriptionStyle = TextStyle(
  fontFamily: "Sans",
  fontSize: 15.0,
  color: Colors.white70,
  fontWeight: FontWeight.w400
  );

  static const tabTextStyle = TextStyle(
      color: AppColors.whiteColor,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      fontFamily: "RobotoSlabBold",
      fontStyle: FontStyle.normal
  );

  static const headingText = TextStyle(
      color: AppColors.whiteColor,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      fontFamily: "RobotoSlabBold",
      fontStyle: FontStyle.normal
  );

  static const matchHeadingText = TextStyle(
      color: Colors.black54,
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      fontFamily: "RobotoSlabMedium",
      fontStyle: FontStyle.normal
  );

  static const teamNameTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      fontFamily: "RobotoSlabMedium",
      fontStyle: FontStyle.normal
  );

  static const matchTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontFamily: "RobotoSlabMedium",
      fontStyle: FontStyle.normal
  );

  static const runTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      fontFamily: "RobotoSlabMedium",
      fontStyle: FontStyle.normal
  );
  static const matchStatusStyle = TextStyle(
      color: AppColors.blackColor,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      fontFamily: "RobotoSlabMedium",
      fontStyle: FontStyle.normal
  );

  static const pointsAndScheduleStyle = TextStyle(
      color: Colors.black38,
      fontSize: 17,
      //fontWeight: FontWeight.w600,
      letterSpacing: 0.2,
      //fontFamily: "RobotoSlabLight",
      fontStyle: FontStyle.normal
  );

  static  const  circbuzzPlusStyle = TextStyle(
      fontFamily: "RobotoSlabMedium",
      fontSize: 12.0,
      color: Colors.white,
      fontWeight: FontWeight.w500
  );

  static const matchHeadingTxt = TextStyle(
      color: AppColors.closeIconColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.2,
      fontFamily: "RobotoSlabMedium",
      fontStyle: FontStyle.normal
  );
}
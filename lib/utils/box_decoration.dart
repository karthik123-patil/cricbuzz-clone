import 'package:flutter/material.dart';
class AppWidgets {
  static backgroundDecoration(BuildContext context){
    return BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment(-1.0, -3.5),
      end: Alignment(1.5, 4.0),
      stops: [0.4, 1],
      colors: [new Color(0XFFFFFFFF),new Color(0XFFFFFFFF)],
      )
    );
  }

}
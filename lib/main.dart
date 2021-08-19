import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/screens/listOfTodo/ListOfTodo.dart';

import 'package:iti_summer_course_tutorial/screens/home/home_screen.dart';

void main() {
  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    theme: ThemeData(
      fontFamily: "Cairo",
      textTheme: TextTheme(
          bodyText2: TextStyle(
        height: 1.2,
      )),

      primarySwatch: Colors.yellow,
    ),

    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  );
  return materialAppWidget;
}

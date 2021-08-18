import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/components/custom_tabs.dart';

void main() {
  runApp(   MaterialApp(
    theme: ThemeData(
      //primarySwatch: Colors.red,
    ),
    home: Scaffold ( body:CustomTabs(),),
    debugShowCheckedModeBanner: false,
  ),  );
}

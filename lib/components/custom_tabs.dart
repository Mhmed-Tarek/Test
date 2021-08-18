import 'package:flutter/material.dart';

class CustomTabs extends StatefulWidget {
  const CustomTabs({Key? key}) : super(key: key);

  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(

         crossAxisAlignment: CrossAxisAlignment.center,
          children: [

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabButton("Reviews"),
              TabButton("Conversations"),
            ],
          ),
        ),
        Container(
          child: Text("Pages"),
        ),
      ]),
    );
  }
}

class TabButton extends StatelessWidget {
  String text = "Tab1";
  TabButton(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}

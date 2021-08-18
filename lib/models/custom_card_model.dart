import 'package:flutter/material.dart';

class CustomCardModel {
  String title, date, icon;
  VoidCallback? onCardClick;
  CustomCardModel({
    required this.title,
    //required this.score,
    required this.date,
    required this.icon,
    this.onCardClick,
  });
}

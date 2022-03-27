import 'package:flutter/material.dart';

class RecentWorkk {
  final String name, review, userPic;
  final int id;
  final Color color;

  RecentWorkk(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

List<RecentWorkk> recentworkk = [
  RecentWorkk(
    id: 1,
    name: "Shop App",
    review:  "E-commerce mobile application where you can trade products expiring soon\nYou can create your own account and sell and buy products.",
    userPic: "assets/images/Annotation 2022-02-05 162933.png",
    color: Colors.white,
  ),
  RecentWorkk(
    id: 2,
    name: "Ai Radio",
    review: "It is a radio player application that supports Syrian radio stations",
    userPic: "assets/images/Free Black Keyboard With Smartphone Mockup.jpg",
    color: Color(0xFFFFF3DD),
  ),

  RecentWorkk(
    id: 3,
    name: "Flutter Developer-Self Employed",
    review: "UI Mobile Design",
    userPic: "assets/images/Annotation 2022-02-05 163052.png",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 4,
    name: "Flutter Developer-Self Employed",
    review: "UI Mobile Design",
    userPic: "assets/images/Annotation 2022-02-05 163126.png",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 5,
    name: "Flutter Developer-Self Employed",
    review: "UI Mobile Design",
    userPic: "assets/images/Annotation 2022-02-05 163210.png",
    color: Color(0xFFFFF3DD),
  ),
 
];


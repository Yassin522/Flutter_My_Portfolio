import 'package:flutter/material.dart';

class Certificates {
  final String name, review, userPic;
  final int id;
  final Color color;

  Certificates(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

// List of demo feedbacks
List<Certificates> certificates = [

   Certificates(
    id: 1,
    name: "ICPC",
    review: "12th place at The 2020 Al-Baath and Hama university contest.\nHonorable Mention at The 2021 Damascus Collegiate Programming Contest.\n146th place at The 2021 ACPC Kickoff Online Individual Contest.",
    userPic: "assets/images/hhh.png",
    color: Color(0xFFFFF3DD),
  ),

  Certificates(
    id: 2,
    name: "Coursera",
    review:  'Version Control with Git.\n Build Photo Gallery Mobile App With Flutter\n How to Write a Resume (Project-Centered Course)\nCreating an Interactive Story with Flutter.\nIntroduction to Game Development.\n Cryptography and Information Theory\nProgramming for Everybody (Getting Started with Python)',
    userPic: "assets/images/2048px-Coursera-Logo_600x600.svg.png",
    color: Colors.white,
  ),
  Certificates(
    id: 3,
    name: "Google",
    review: "Google Hash Code 2022",
    userPic: "assets/images/images.png",
    color: Color(0xFFFFF3DD),
  ),
    Certificates(
    id: 4,
    name: "HackeRank",
    review: "Problem Solving (Basic)",
    userPic: "assets/images/HackerRank_Icon-1000px.png",
    color: Color(0xFFFFF3DD),
  ),
  
];


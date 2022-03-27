import 'package:flutter/material.dart';

class Experience {
  final String name, review, userPic;
  final int id;
  final Color color;

  Experience(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

// List of demo feedbacks
List<Experience> experiences = [
  Experience(
    id: 1,
    name: "ICPC",
    review:  'Contestant at ACM | ICPC\nHonorable Mention at The 2021 Damascus Collegiate Programming Contest\n12th place at The 2020 Al-Baath and Hama university contest\n146th place at The 2021 ACPC Kickoff Online Individual Contest',
    userPic: "assets/images/p4755.jpg",
    color: Colors.white,
  ),
  Experience(
    id: 2,
    name: "Flutter Developer-Self Employed",
    review: "1 year experience in Flutter Development.Familiarity with linking RESTful APIs.Firebase Auth, Dart, Bloc, Cubit, Getx, MVC, Providers, Local Storage (or Sqflite), JSON, REST API integrations.Know how to deal with different screen sizes.Experience with version control such as Git and GitHub.",
    userPic: "assets/images/FKNlhKZUcAEd7FY.png",
    color: Color(0xFFFFF3DD),
  ),
];


import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "RBCs Team",
    review: review,
    userPic: "assets/images/photo_2021-10-05_12-37-55.jpg",
    color: Color(0xFFFFF3DD),
  ),


];

String review =
    'Yassin Abdelmahdi has been doing an exemplary job while in this role; he perfects teamwork, and has revealed excellent communication skills. We wish him all the luck for his future. ';

import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: Image.asset("assets/images/person.png"),
    );
  }
}

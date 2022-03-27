import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About \nmy story",
           style: Theme.of(context)
           .textTheme
           .headline6!
           .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        //SizedBox(height: kDefaultPadding * 2),
        ),
      ],
    );
  }
}

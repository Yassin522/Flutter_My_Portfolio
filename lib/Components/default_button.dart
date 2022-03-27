import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.imageSrc,
    required this.text,
    required this.press,
  });

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press,
      child: Row(
        children: [
          Image.asset(imageSrc, height: 35),
          SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}

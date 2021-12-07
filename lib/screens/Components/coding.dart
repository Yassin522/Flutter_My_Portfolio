import 'package:flutter/material.dart';
import 'package:my_profile/Components/animated_progress_indicator.dart';

import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          precentage: 0.8,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          precentage: 0.5,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          precentage: 0.5,
          label: "JAVA",
        ),
        AnimatedLinearProgressIndicator(
          precentage: 0.2,
          label: "CSS",
        ),
      ],
    );
  }
}

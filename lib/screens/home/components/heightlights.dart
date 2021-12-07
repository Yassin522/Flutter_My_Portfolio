import 'package:flutter/material.dart';
import 'package:my_profile/responsive.dart';

import '../../../constants.dart';
import 'animated_counter.dart';
import 'height_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 697,
                        text: "+",
                      ),
                      label: "instagram",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Dribble",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 1,
                        text: "+",
                      ),
                      label: "Github Projects",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 81,
                        text: "+",
                      ),
                      label: "Linkedin",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightLight(
                  counter: AnimatedCounter(
                    value: 697,
                    text: "+",
                  ),
                  label: "instagram",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "Dribble",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 1,
                    text: "+",
                  ),
                  label: "Github Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 81,
                    text: "+",
                  ),
                  label: "Linkedin",
                ),
              ],
            ),
    );
  }
}

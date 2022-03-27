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
                        value: 281,
                        text: "+",
                      ),
                      label: "Linkedin",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: HeightLight(
                        counter: AnimatedCounter(
                          value: 40,
                          text: "+",
                        ),
                        label: "Behance",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "+",
                      ),
                      label: "Github Projects",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: HeightLight(
                        counter: AnimatedCounter(
                          value: 800,
                          text: "+",
                        ),
                        label: "instagram",
                      ),
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
                    value: 281,
                    text: "+",
                  ),
                  label: "Linkedin",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                  label: "Behance",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 3,
                    text: "+",
                  ),
                  label: "Github Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 800,
                    text: "+",
                  ),
                  label: "instagram",
                ),
              ],
            ),
    );
  }
}

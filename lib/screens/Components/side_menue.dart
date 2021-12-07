import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_profile/Components/animated_progress_indicator.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/screens/Components/skills.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenue extends StatelessWidget {
  const SideMenue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Syria",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Damascus",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "20",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "Download CV",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset("assets/icons/download.svg"),
                            ],
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(
                        top: defaultPadding,
                      ),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

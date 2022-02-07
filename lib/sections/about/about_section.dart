import 'package:flutter/material.dart';
import 'package:my_profile/Components/default_button.dart';
import 'package:my_profile/Components/my_outline_button.dart';
import 'package:my_profile/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Third year student in the Faculty of Information Engineering at Damascus University also I am a competitive programmer, skilled in problem solving, algorithms and data structures",
                ),
              ),
              ExperienceCard(numOfExp: "01"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Flutter Developer\nWorkable knowledge with Flutter platform,Coding knowledge in Dart,Good knowledge of OOPs Concepts",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: _launchURL,
                child: Row(
                  children: [
                    Image.asset("assets/images/hand.png", height: 40),
                    SizedBox(width: kDefaultPadding),
                    Text("Hire Me!      "),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              InkWell(
                onTap: _launchURL2,
                child: Row(
                  children: [
                    Image.asset("assets/images/download.png", height: 40),
                    SizedBox(width: kDefaultPadding),
                    Text("Download CV      "),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _url = 'https://www.linkedin.com/in/yassin-abdulmahdi-273561210/';
  String _url2 = 'https://drive.google.com/file/d/1vehKfwXZcITfHmR05CuWG2ZXw2keN1tf/view?usp=sharing';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchURL2() async {
    if (!await launch(_url2)) throw 'Could not launch $_url';
  }
}

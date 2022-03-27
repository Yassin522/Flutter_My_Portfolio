import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_profile/Components/animated_progress_indicator.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/screens/Components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenue extends StatefulWidget {
  const SideMenue({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenue> createState() => _SideMenueState();
}

class _SideMenueState extends State<SideMenue> {
  late ScrollController _scrollController;
  double offset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          offset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
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
                      text: "21",
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
                              InkWell(
                                onTap: _launchURL3,
                                child: Text(
                                  "Download CV",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color),
                                ),
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
                          InkWell(
                            onTap: _launchURL,
                            child: SvgPicture.asset(
                              "assets/icons/linkedin.svg",
                              width: 35,
                              height: 25,
                            ),
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            onTap: _launchURL2,
                            child: SvgPicture.asset(
                              "assets/icons/github.svg",
                              width: 35,
                              height: 25,
                            ),
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            onTap: _launchURL4,
                            child: SvgPicture.asset(
                              "assets/icons/behance.svg",
                              width: 35,
                              height: 25,
                            ),
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

  String _url = 'https://www.linkedin.com/in/yassin-abdulmahdi-273561210/';
  String _url2 = 'https://github.com/Yassin522';
  String _url3 =
      'https://drive.google.com/file/d/1vehKfwXZcITfHmR05CuWG2ZXw2keN1tf/view?usp=sharing';
      String _url4='https://www.behance.net/yassinabdelmahdi';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchURL2() async {
    if (!await launch(_url2)) throw 'Could not launch $_url';
  }

  void _launchURL3() async {
    if (!await launch(_url3)) throw 'Could not launch $_url';
  }
  void _launchURL4() async {
    if (!await launch(_url4)) throw 'Could not launch $_url';
  }
}

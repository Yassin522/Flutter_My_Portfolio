

import 'package:flutter/material.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/models/Recentwork2.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentWorkCardd extends StatefulWidget {
  const RecentWorkCardd({
    required this.index,
    required this.press,
  });

  final int index;
   final Function press;

  @override
  State<RecentWorkCardd> createState() => _RecentWorkCarddState(
     press: press,
     index: index,
  );
}

class _RecentWorkCarddState extends State<RecentWorkCardd> {

  _RecentWorkCarddState({
    required this.press,
    required this.index,
  });

  final Function press;
  final int index;

  List recents = [
    'https://www.behance.net/gallery/135045769/MPES-Shop',
    'https://www.behance.net/gallery/138320099/Ai-Radio'
    'https://www.behance.net/gallery/130745125/E-commerce-App',
    'https://www.behance.net/gallery/130745125/E-commerce-App',
    'https://www.behance.net/gallery/135352927/Eatmore',
    'https://www.behance.net/gallery/129876927/My-Portfolio',
    
  ];

  void _launchURL() async {
    if (!await launch(recents[index])) throw 'Could not launch ';
  }

  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.only(top: kDefaultPadding * 3),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 370,
          width: 350,
          decoration: BoxDecoration(
            color: recentworkk[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -20),
                child: AnimatedContainer(
                  duration: duration,
                  height: 165,
                  width: 190,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [if (!isHover) kDefaultCardShadow],
                    image: DecorationImage(
                      image: AssetImage(recentworkk[widget.index].userPic),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                recentworkk[widget.index].review,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              Text(
                  recentworkk[widget.index].name,
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
              ),
                  SizedBox(height: 10),
                        InkWell(
                          onTap: _launchURL,
                          child: Text(
                            "View Details",
                            style:
                                TextStyle(decoration: TextDecoration.underline, color: Colors.red),
                          ),
                        ),

            ],
          ),
        ),
      ),
    );
  }
}
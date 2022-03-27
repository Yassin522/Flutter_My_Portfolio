import 'package:flutter/material.dart';
import 'package:my_profile/models/RecentWork.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    required this.index,
    required this.press,
  });

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState(
        press: press,
        index: index,
      );
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  _RecentWorkCardState({
    required this.press,
    required this.index,
  });

  final Function press;
  final int index;

  List recents = [
    'https://www.behance.net/gallery/135045769/MPES-Shop',
    'https://www.behance.net/gallery/130745125/E-commerce-App',
    'https://www.behance.net/gallery/135352927/Eatmore',
    'https://www.behance.net/gallery/129876927/My-Portfolio',
    'https://www.linkedin.com/feed/update/urn:li:activity:6903663096720957440/'
  ];

  void _launchURL() async {
    if (!await launch(recents[index])) throw 'Could not launch ';
  }

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press(),
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 280,
          width: 320,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child:
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           Image.asset(
                                 recentWorks[widget.index].image,
                                  width: 220,
                                  height: 220,
                               ),

                        Text(recentWorks[widget.index].category.toUpperCase()),
                       
                       
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
             
        ),
      ),
    );
  }
}

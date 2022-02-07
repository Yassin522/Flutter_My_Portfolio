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
    'https://www.behance.net/gallery/129876927/My-Portfolio'
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
          height: 290,
          width: 510,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                Image.asset(
                  recentWorks[widget.index].image,
                  width: 300,
                  height: 300,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(recentWorks[widget.index].category.toUpperCase()),
                        SizedBox(height: kDefaultPadding / 2),
                        Text(
                          recentWorks[widget.index].title,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(height: 1.5),
                        ),
                        SizedBox(height: kDefaultPadding),
                        InkWell(
                          onTap: _launchURL,
                          child: Text(
                            "View Details",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

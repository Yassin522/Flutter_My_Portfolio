import 'package:flutter/material.dart';
import 'package:my_profile/Components/section_title.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/models/Recentwork2.dart';
import 'package:my_profile/sections/recent_work2/components/recent_work2_card.dart';



class RecentWorkk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Recent Work",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
             scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                recentworkk.length,
                (index) => RecentWorkCardd(index: index, press: () {}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

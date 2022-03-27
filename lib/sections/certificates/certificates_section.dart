import 'package:flutter/material.dart';
import 'package:my_profile/Components/section_title.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/models/Certificates.dart';
import 'package:my_profile/sections/certificates/components.dart/certificates_card.dart';


class CertificateSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Licenses & certifications",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Colors.yellow,
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                certificates.length,
                (index) => Certificatecard(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

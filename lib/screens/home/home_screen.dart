import 'package:flutter/material.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/screens/main/main_screen.dart';
import 'package:my_profile/sections/about/about_section.dart';
import 'package:my_profile/sections/certificates/certificates_section.dart';
import 'package:my_profile/sections/contact/contact_section.dart';
import 'package:my_profile/sections/feedback/feedback_section.dart';
import 'package:my_profile/sections/recent_work/recent_work_section.dart';
import 'package:my_profile/sections/service/service_section.dart';
import '../../sections/experience/experience_section.dart';
import '../../sections/recent_work2/recent_work2_section.dart';
import 'components/heightlights.dart';
import 'components/home_banner.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        // MyProjects(),
        //  Recommendations(),
        SizedBox(height: kDefaultPadding * 2),
        AboutSection(),
        Divider(),
        ServiceSection(),
        Divider(),
        ExperienceSection(),
        Divider(),
       //RecentWorkSection(),
       // RecentWorkk(),
        Divider(),
        FeedbackSection(),
        Divider(),
        CertificateSection(),
        Divider(),
        ContactSection(),
      ],
    );
  }
}

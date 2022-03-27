import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:my_profile/Components/default_button.dart';
import 'package:my_profile/Components/section_title.dart';
import 'package:my_profile/api/google_signin_api.dart';
import 'package:my_profile/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/socal_card.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  List contacts = [
     "https://www.linkedin.com/in/yassin-abdulmahdi-273561210/",
     "https://www.instagram.com/yaseen_almahdi5/",
     "https://t.me/yaseen52"
  ];
  String _url = 'https://www.linkedin.com/in/yassin-abdulmahdi-273561210/';
  String _url2 = 'https://www.instagram.com/yaseen_almahdi5/';
  String _url3='https://t.me/yaseen52';
  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchURL2() async {
    if (!await launch(_url2)) throw 'Could not launch $_url';
  }
  void _launchURL3() async {
    if (!await launch(_url3)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: darkColor.withOpacity(0.66),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: _launchURL,
                child: SocalCard(
                  color: Color(0xFFD9FFFC),
                  iconSrc: "assets/images/Linkedin.png",
                  name: 'Yassin',
                  press: () {},
                ),
              ),
              SizedBox(width: 5),
              InkWell(
                onTap: _launchURL2,
                child: SocalCard(
                  color: Color(0xFFE4FFC7),
                  iconSrc: "assets/images/instagram.png",
                  name: 'Yassin',
                  press: () {},
                ),
              ),
              SizedBox(width: 5),
            
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _namecontroller=TextEditingController();
  final _emalcontroller=TextEditingController();
  final _subjectcontroller=TextEditingController();
  final _textcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: _namecontroller,
              onChanged: (String value) {
                  _namecontroller.text=value;
              },
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: _emalcontroller,
              onChanged: (String value) {
                 _emalcontroller.text=value;
              },
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: _subjectcontroller,
              onChanged: (String value) {
                  _subjectcontroller.text=value;
              },
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
     
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              controller: _textcontroller,
              onChanged: (String value) {
                  _textcontroller.text=value;
              },
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child:InkWell(
              onTap:  signIn,
             child: Row(
                  children: [
                       Image.asset("assets/images/contact_icon.png", height: 40),
                   SizedBox(width: kDefaultPadding),
                  Text("Contact Me!"),
                     ],
               ),
               ),
              
            ),
          )
        ],
      ),
    );
  }

   Future sendEmail()async {
     final smtpServer=gmailSaslXoauth2(_emalcontroller.text, "accessToken");
     
       final message=Message()
       ..from=Address(_emalcontroller.text,_namecontroller.text)
       ..recipients=['yasinalmhdi8@gmail.com']
       ..subject=_subjectcontroller.text
       ..text=_textcontroller.text;
     
      try{
       await send(message, smtpServer);
        //showSnackBar('Sent email successfully');
      }
      on MailerException catch(e){
          print(e);
      }
   }

   /*void showSnackBar(String text){
      final snackBar=SnackBar(
        content: Text(
           text,
           style: TextStyle(fontSize: 20),
        ),
           backgroundColor: Colors.green,
        );
        ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(snackBar);
   }*/


   Future signIn() async{
     await GoogleSignInApi.login();
      
   }
}

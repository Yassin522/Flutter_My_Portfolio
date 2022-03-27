import 'package:flutter/material.dart';
import 'package:my_profile/models/Certificates.dart';
import '../../../constants.dart';


class Certificatecard extends StatefulWidget {
  const Certificatecard({
     required this.index,
  });
  
  final int index;
  @override
  State<Certificatecard> createState() => _CertificatecardState();
}

class _CertificatecardState extends State<Certificatecard> {
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
          height: 400,
          width: 350,
          decoration: BoxDecoration(
            color: certificates[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -55),
                child: AnimatedContainer(
                  duration: duration,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [if (!isHover) kDefaultCardShadow],
                    image: DecorationImage(
                      image: AssetImage(certificates[widget.index].userPic),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                certificates[widget.index].review,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              Text(
                certificates[widget.index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );;
  }
}


import 'package:covid19/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundCard extends StatelessWidget {
  final double height, width;
  final String title;
  final Widget childWidget;

  RoundCard({this.height, this.width, this.title, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.symmetric(horizontal: 25),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(11),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.25)),
            ],
          ),
        ),
        Positioned(
          top: 15,
          bottom: 0,
          left: 45,
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: titleColor), fontSize: 14),
          ),
        ),
        Positioned(
          child: Container(
            child: childWidget,
          ),
        ),
      ],
    );
  }
}

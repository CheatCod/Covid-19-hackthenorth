import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusText extends StatelessWidget {
  final Color color;
  final int currentNum, newNum;
  final String percentile;
  StatusText({this.color, this.currentNum, this.newNum, this.percentile});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            right: 20,
          ),
          child: Text(
            currentNum.toString(),
            style: GoogleFonts.robotoCondensed(
                textStyle: TextStyle(fontSize: 52), color: color),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                bottom: 6,
              ),
              child: Text(
                "+" + newNum.toString(),
                style: GoogleFonts.robotoCondensed(color: color),
              ),
            ),
            Text(
              "+" + percentile + "%",
              style: GoogleFonts.robotoCondensed(color: color),
            ),
          ],
        )
      ],
    );
  }
}

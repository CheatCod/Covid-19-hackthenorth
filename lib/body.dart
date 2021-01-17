import 'package:covid19/colors.dart';
import 'package:flutter/material.dart';

import 'round_card.dart';
import 'status.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.1,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: size.height * .2 - 14,
                color: primaryColor,
              ),
              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: RoundCard(title: "", height: 90, width: size.width),
              ),
              Positioned(
                bottom: -480,
                left: 0,
                right: 0,
                child: RoundCard(
                  title: "Today",
                  height: 400,
                  width: size.width,
                  childWidget: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 40, left: 50),
                        child: StatusText(
                          currentNum: 204145,
                          newNum: 3118,
                          percentile: "5",
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 0, left: 50),
                        child: StatusText(
                          currentNum: 80284,
                          newNum: 100,
                          percentile: "5",
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

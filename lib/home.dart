import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: SvgPicture.asset("assets/menu.svg"),
            onPressed: () {},
            color: Color(0xFF0C9869),
          )),
      body: Body(),
    );
  }
}

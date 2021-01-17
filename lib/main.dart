import 'package:flutter/material.dart';

import 'body.dart';
import 'colors.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "covid19",
        home: Home(),
        theme: ThemeData(
          primaryColor: primaryColor,
        ));
  }
}

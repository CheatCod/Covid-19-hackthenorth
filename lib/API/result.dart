import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Data> fetchData() async {
  final response = await http.get(
      'https://disease.sh/v3/covid-19/countries/Canada?yesterday=true&twoDaysAgo=false&strict=true&allowNull=0');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Data.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Data {
  final int lastUpdate, date, todayCases, todayDeath, todayRecovered;

  Data(
      {this.date,
      this.lastUpdate,
      this.todayCases,
      this.todayDeath,
      this.todayRecovered});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      date: json['date'],
      lastUpdate: json['lastUpdate'],
      todayCases: json['todayCases'],
      todayDeath: json['todayDeath'],
      todayRecovered: json['todayRecovered'],
    );
  }
}

class Result extends StatefulWidget {
  Result({Key key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Future<Data> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    FutureBuilder<Data>(
      future: futureData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.todayCases.toString());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    );
  }
}

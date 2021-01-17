import 'package:flutter/foundation.dart';

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

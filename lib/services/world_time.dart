import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WorldTime {
  String location = ''; //location name for ui
  String time = ''; //time for that location
  String flag = ''; //url to asset in flag icon
  String url = ''; //url of the location

  WorldTime({
    required this.flag,
    required this.location,
    required this.url,
  });
  Future<void> getdata() async {
    //sumulate the network request for a username   http://worldtimeapi.org/api/timezone/Asia/Kathmandu   Map data = jsonDecode(response.body);
    final response =
        await http.get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    // print(data);
    // String offset = data['offset'];

    String datetime = data['datetime'];
    String utc_offset = data['utc_offset'].substring(1, 3);
    print('${datetime} ');
    print('${utc_offset}');

    //creating the date and time object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(utc_offset)));
    print(now);

    //set the time property
    time = now.toString();
  }
}

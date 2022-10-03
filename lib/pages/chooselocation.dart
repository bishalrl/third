import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("cHOOSE A LOCATION"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text(
        "Counter is",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

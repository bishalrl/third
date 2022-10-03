import 'package:demo_project/pages/chooselocation.dart';
import 'package:demo_project/pages/loading.dart';
import 'package:flutter/material.dart';

class Homeee extends StatefulWidget {
  const Homeee({Key? key}) : super(key: key);

  @override
  State<Homeee> createState() => _HomeeeState();
}

class _HomeeeState extends State<Homeee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Location()));
                },
                icon: Icon(Icons.edit_location),
                label: Text('Location'))
          ],
        ),
      ),
    );
  }
}

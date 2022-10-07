import 'package:demo_project/services/world_time.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loadingg';
  //here stats
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        flag: 'Nepal.jpg', location: 'Kathmandu', url: 'Asia/Kathmandu');
    instance.getdata;
    print(instance.time);
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    // setState(() {
    //   var instance;
    //   time = instance.time;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(child: Text("loadingg")),
      ),
    );
  }
}

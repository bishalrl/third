import 'package:demo_project/pages/chooselocation.dart';
import 'package:demo_project/pages/homefortime.dart';
import 'package:demo_project/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   scaffoldBackgroundColor: lightScaffoldColor,
      //   primaryColor: lightCardColor,
      //   backgroundColor: lightBackgroundColor,
      //   appBarTheme: AppBarTheme(
      //     iconTheme: IconThemeData(
      //       color: lightIconsColor,
      //     ),
      //     backgroundColor: lightScaffoldColor,
      //     centerTitle: true,
      //     titleTextStyle: TextStyle(
      //         color: lightTextColor, fontSize: 22, fontWeight: FontWeight.bold),
      //     elevation: 0,
      //   ),
      //   iconTheme: IconThemeData(
      //     color: lightIconsColor,
      //   ),
      //   textSelectionTheme: const TextSelectionThemeData(
      //     cursorColor: Colors.black,
      //     selectionColor: Colors.blue,
      //   ),
      //   cardColor: lightCardColor,
      //   brightness: Brightness.light,
      //   colorScheme: ThemeData().colorScheme.copyWith(
      //         secondary: lightIconsColor,
      //         brightness: Brightness.light,
      //       ),
      // ),

      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Homeee(),
        '/location': (context) => Location(),
      },
    );
  }
}

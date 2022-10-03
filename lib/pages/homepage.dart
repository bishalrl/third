// import 'package:demo_project/pages/collection_feed.dart';
// import 'package:demo_project/widgets/snackbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';

// import '../widgets/appbar.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 1,
//           toolbarHeight: 90,
//           title: const Text("HOme"),
//           leading: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: IconButton(
//                 icon: Icon(IconlyBold.category),
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Collection()));
//                 },
//               )),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: IconButton(
//                 icon: Icon(
//                   IconlyBold.user3,
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => SnackbarWidgit()));
//                 },
//               ),
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(15),
//           child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 5,
//               crossAxisSpacing: 5,
//             ),
//             itemBuilder: (context, index) {
//               return Container(
//                 height: 150,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
//                 ),
//                 child: Text("Hello World"),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

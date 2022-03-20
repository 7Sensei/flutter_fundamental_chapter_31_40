// import 'package:flutter/material.dart';
// import 'package:flutter_fundamental_chapter_31_40/user_model.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   User user = null;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('API Demo'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text((user != null)
//                   ? user.id + ' | ' + user.name
//                   : 'Tidak Ada Data'),
//               RaisedButton(
//                 onPressed: () {
//                   User.connectToAPI("3").then((value) {
//                     user = value;
//                     setState(() {});
//                   });
//                 },
//                 child: Text('GET'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

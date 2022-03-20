import 'package:flutter/material.dart';
import 'package:flutter_fundamental_chapter_31_40/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "No Data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(output),
              RaisedButton(
                onPressed: () {
                  User.getUser("2").then((users) {
                    output = '';
                    for (var i = 0; i < users.length; i++) {
                      output += '[ ' + users[i].name + '] ';
                      setState(() {});
                    }
                  });
                },
                child: Text('GET'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

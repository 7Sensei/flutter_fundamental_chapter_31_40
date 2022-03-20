import 'package:flutter/material.dart';
import 'package:flutter_fundamental_chapter_31_40/post_result_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
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
              Text((postResult != null)
                  ? postResult.id +
                      ' | ' +
                      postResult.name +
                      ' | ' +
                      postResult.job +
                      ' | ' +
                      postResult.created
                  : 'tidal ada data'),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI('Rafi', 'Mahasiswa').then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text('Post'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

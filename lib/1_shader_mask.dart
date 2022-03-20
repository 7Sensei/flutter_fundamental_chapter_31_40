import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient Opacity'),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, rectangle.width, rectangle.width));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              height: 580,
              width: 400,
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/05/13/15/18/dear-2309801_960_720.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

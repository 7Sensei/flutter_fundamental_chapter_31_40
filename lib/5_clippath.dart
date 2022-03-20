import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clippath'),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              width: 350,
              image: NetworkImage(
                  'https://images.pling.com/img/00/00/61/61/56/1533546/1c191db20f9fdd5b39699ba8887e172a92b89b9adc7746b2997169687bcc766dd388.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

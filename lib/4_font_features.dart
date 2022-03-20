import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Font Features'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Contoh 01 (Tanpa apapun)',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Contoh 02 (Small Caps)',
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                'Contoh 2 1/2 (Small Caps & Caps)',
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ]),
              ),
              Text(
                'Contoh 3 1/2 (Small Caps & Caps)',
                style: GoogleFonts.milonga(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFeatures: [
                      FontFeature.enable('smcp'),
                      FontFeature.enable('frac'),
                    ],
                  ),
                ),
              ),
              Text(
                'Contoh 04 cardo 19 (Tanpa Apapun)',
                style: GoogleFonts.cardo(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontFeatures: [FontFeature.enable('smcp')])),
              ),
              Text(
                'Contoh 04 cardo 19 (Old Style)',
                style: GoogleFonts.cardo(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFeatures: [
                      FontFeature.oldstyleFigures(),
                    ],
                  ),
                ),
              ),
              Text(
                'Gabriola default',
                style: TextStyle(fontSize: 30, fontFamily: 'Gabriola'),
              ),
              Text(
                'Gabriola (set style nomer 5)',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Gabriola',
                  fontFeatures: [FontFeature.stylisticSet(5)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

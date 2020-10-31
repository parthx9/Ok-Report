import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/hompage.dart';

void main() => {runApp(myApp())};

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

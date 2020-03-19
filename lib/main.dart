import 'package:flutter/material.dart';
import 'package:lifestyle_ui/screens/home.dart';
import 'package:lifestyle_ui/screens/music.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

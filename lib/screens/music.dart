import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFffcdb4)
                ),
            height: MediaQuery.of(context).size.height * 0.5,
          )),
          Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF4f3c75),
                ),
                height: MediaQuery.of(context).size.height * 0.5,
              )),
          Positioned(
            top: 80.0,
            bottom: 80.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0)
              ),
            ),
          ),
          Positioned(
            bottom: 30.0,
              right: 80.0,
              left: 80.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(FontAwesomeIcons.heart, color: Colors.white, size: 15.0,),
              Icon(FontAwesomeIcons.random, color: Colors.white, size: 15.0,),
              Icon(FontAwesomeIcons.music, color: Colors.white, size: 15.0,),
            ],
          )),
          Positioned(
              top: 30.0,
              right: 30.0,
              left: 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 20.0,),
                  Icon(Icons.search, color: Colors.white, size: 25.0,),
                ],
              ))
        ],
      )
    );
  }
}

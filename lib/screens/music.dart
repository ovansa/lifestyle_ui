import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lifestyle_ui/files_for_circular_progress/seekbars.dart';
import 'package:lifestyle_ui/styles/textstyles.dart';
import 'package:lifestyle_ui/widgets/music_screen_widgets/music_control.dart';
import 'package:lifestyle_ui/widgets/music_screen_widgets/music_progress_bar.dart';
import 'package:lifestyle_ui/widgets/music_screen_widgets/volume_control.dart';

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
              decoration: BoxDecoration(color: Color(0xFFffcdb4)),
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
          top: 75.0,
          bottom: 75.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50.0)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                MusicProgressbar(),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Inner Peace",
                      style: smallTitles,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Life Gratitude",
                      style: titles,
                    )
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                MusicControl(),
                SizedBox(
                  height: 25.0,
                ),
                VolumeControl()
              ],
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,
            right: 80.0,
            left: 80.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                  size: 20.0,
                ), onPressed: (){}),
                IconButton(icon: Icon(
                  FontAwesomeIcons.random,
                  color: Colors.white,
                  size: 20.0,
                ), onPressed: (){}),
                IconButton(icon: Icon(
                  FontAwesomeIcons.music,
                  color: Colors.white,
                  size: 20.0,
                ), onPressed: (){}),
              ],
            )),
        Positioned(
            top: 20.0,
            right: 10.0,
            left: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20.0,
                ), onPressed: () {
                  Navigator.pop(context);
                }),
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25.0,
                ),
              ],
            ))
      ],
    ));
  }
}

class MClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: min(size.width, size.height) / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

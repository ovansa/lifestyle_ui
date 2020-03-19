import 'package:flutter/material.dart';

class MusicControl extends StatefulWidget {
  @override
  _MusicControlState createState() => _MusicControlState();
}

class _MusicControlState extends State<MusicControl> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.fast_rewind,
              size: 30.0,
              color: Color(0xFF4f3c75).withOpacity(0.3),
            ),
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFffcdb4)),
              child: IconButton(icon: Icon(
                Icons.pause,
                size: 20.0,
                color: Colors.white.withOpacity(0.9),
              ), onPressed: (){
                print("Play");
              }),
            ),
            Icon(
              Icons.fast_forward,
              size: 30.0,
              color: Color(0xFF4f3c75).withOpacity(0.3),
            )
          ],
        ),
      ),
    );
  }
}

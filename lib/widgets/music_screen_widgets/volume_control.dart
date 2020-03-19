import 'package:flutter/material.dart';

class VolumeControl extends StatefulWidget {
  @override
  _VolumeControlState createState() => _VolumeControlState();
}

class _VolumeControlState extends State<VolumeControl> {
  int theValue = 20;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.volume_mute), onPressed: () {}, color: Color(0xFF4f3c75),),
            Container(
              width: MediaQuery.of(context).size.width * 0.40,
              child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor:
                      Color(0xFF4f3c75).withOpacity(0.9),
                      inactiveTrackColor:
                      Color(0xFF4f3c75).withOpacity(0.3),
                      trackHeight: 2.0,
                      thumbColor: Color(0xFF4f3c75),
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 8.0),
                      overlayColor: Color(0xFF4f3c75).withOpacity(0.3),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 6.0)
                  ),
                  child: Slider(
                      min: 1,
                      max: 100,
                      value: theValue.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          theValue = value.round();
                        });
                      })),
            ),
            IconButton(
              icon: Icon(Icons.volume_up), onPressed: () {}, color: Color(0xFF4f3c75),),
          ],
        ),
      ),
    );
  }
}

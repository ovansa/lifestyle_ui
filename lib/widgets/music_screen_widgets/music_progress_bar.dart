import 'package:flutter/material.dart';
import 'package:lifestyle_ui/files_for_circular_progress/seekbars.dart';

class MusicProgressbar extends StatefulWidget {
  @override
  _MusicProgressbarState createState() => _MusicProgressbarState();
}

class _MusicProgressbarState extends State<MusicProgressbar> {
  double _thumbPercent = 0.4;

  Widget _buildCircleSeekBar() {
    return RadialSeekBar(
      trackColor: Color(0xFF503d76).withOpacity(0.5),
      trackWidth: 1.0,
      progressColor: Color(0xFF503d76),
      progressWidth: 3.0,
      thumbPercent: _thumbPercent,
      thumb: CircleThumb(
        color: Color(0xFF503d76),
        diameter: 15.0,
      ),
      progress: _thumbPercent,
      onDragUpdate: (double percent) {
        setState(() {
          _thumbPercent = percent;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 220.0,
        height: 220.0,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFF).withOpacity(.5),
                shape: BoxShape.circle,
              ),
              child: _buildCircleSeekBar(),
            ),
            Center(
              child: CircleAvatar(
                backgroundImage:
                ExactAssetImage("assets/olivia.jpg"),
                minRadius: 50,
                maxRadius: 95,
              ),
            )
          ],
        ),
      ),
    );
  }
}

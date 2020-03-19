import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lifestyle_ui/widgets/categories.dart';
import 'package:lifestyle_ui/widgets/optionSelector.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Row(
            children: <Widget>[
              CircleAvatar(
              radius: 20.0,
//                    backgroundImage: AssetImage("assetName"),
              backgroundImage: AssetImage("assets/olivia.jpg"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text("Hi, Karen", style: GoogleFonts.ubuntu(
              color: Color(0xFF503d76),
              fontWeight: FontWeight.w800
            ),)
        ],
      ),
                Icon(Icons.menu, color: Color(0xFF503d76), size: 20.0,)
              ],
            ),
          ),
          OptionSelector(),
          Expanded(
            child: Categories(),
          )
        ],
      ),
    );
  }
}

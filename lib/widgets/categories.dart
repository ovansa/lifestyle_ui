import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lifestyle_ui/screens/music.dart';
import 'package:lifestyle_ui/styles/textstyles.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(crossAxisCount: 2,
      crossAxisSpacing: 25.0,
      mainAxisSpacing: 25.0,
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      children: <Widget>[
        Container(
          height: 200,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Color(0xFFffcdb4),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              Positioned(
                  left: 20.0, top: 20.0, child: Text("Calm \nHighlights", style: titles)),
//              Positioned(
//                right: 0,
//                bottom: 0,
//                child: Container(
//                  width: 100,
//                  child: Image.asset("assets/mother.png"),
//                ),
//              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Music()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFd5d7ff),
                borderRadius: BorderRadius.circular(20.0)
            ),child: Stack(
            children: <Widget>[
              Positioned(child: Text("Pieceful\nThoughts", style: titles,), top: 15.0, left: 15.0,)
            ],
          ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFffefd7),
              borderRadius: BorderRadius.circular(20.0)
          ),
          child: Stack(
            children: <Widget>[
              Positioned(child: Text("Life\nGratitude", style: titles,), top: 15.0, left: 15.0,)
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFfce4e7),
              borderRadius: BorderRadius.circular(20.0)
          ),child: Stack(
          children: <Widget>[
            Positioned(child: Text("Love\nYourself", style: titles,), top: 15.0, left: 15.0,)
          ],
        ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFffefd7),
              borderRadius: BorderRadius.circular(20.0)
          ),child: Stack(
          children: <Widget>[
            Positioned(child: Text("Self\nConfidence", style: titles,), top: 15.0, left: 15.0,)
          ],
        ),
        ),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 200),
        StaggeredTile.extent(1, 230),
        StaggeredTile.extent(1, 100),
        StaggeredTile.extent(1, 230),
        StaggeredTile.extent(1, 100),
      ],
    );
  }
}

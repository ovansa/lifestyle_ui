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
                decoration: BoxDecoration(color: Color(0xFFd5d7ff),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              Positioned(
                  left: 20.0, top: 20.0, child: Text("Calm \nHighlights", style: titles)),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 170.0,
                  width: 200.0,
                  child: Image.asset("assets/dream.png"),
                ),
              )
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
              Positioned(child: Text("Pieceful\nThoughts", style: titles,), top: 15.0, left: 15.0,),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  child: Image.asset("assets/super_woman.png", fit: BoxFit.fitHeight,),
                ),
              )
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
              Positioned(child: Text("Life\nGratitude", style: titles,), top: 15.0, left: 15.0,),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 60.0,
                  width: 80.0,
                  child: Image.asset("assets/family_meal.png", fit: BoxFit.fill,),
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFfce4e7),
              borderRadius: BorderRadius.circular(20.0)
          ),child: Stack(
          children: <Widget>[
            Positioned(child: Text("Love\nYourself", style: titles,), top: 15.0, left: 15.0,),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 150.0,
                height: 150.0,
                child: Image.asset("assets/heart_face.png", fit: BoxFit.fill,),
              ),
            )
          ],
        ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFffefd7),
              borderRadius: BorderRadius.circular(20.0)
          ),child: Stack(
          children: <Widget>[
            Positioned(child: Text("Self\nConfidence", style: titles,), top: 15.0, left: 15.0,),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 80.0,
                height: 50.0,
                child: Image.asset("assets/eating_ice_cream.png", fit: BoxFit.fill,),
              ),
            )
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

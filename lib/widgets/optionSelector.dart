import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionSelector extends StatefulWidget {
  @override
  _OptionSelectorState createState() => _OptionSelectorState();
}

class _OptionSelectorState extends State<OptionSelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Sleep', 'Inner Peace', 'Stress', 'Anxiety', "Peace", "Faith", "Elements"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      child: Container(
        height: 35.0,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: index == selectedIndex ? Color(0xFF503d76) : Colors.white,
                    borderRadius: BorderRadius.circular(20.0)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Text(categories[index],
                      style: GoogleFonts.ubuntu(
                        color: index == selectedIndex ? Colors.white : Color(0xFF503d76),
                        letterSpacing: index == selectedIndex ? 1.5 : 0,
                        fontSize: 12.0,
                        fontWeight: index == selectedIndex ? FontWeight.w600 : FontWeight.w400
                      )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

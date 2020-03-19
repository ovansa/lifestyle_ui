import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Color(0xFFffcdb4),
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50.0)
            ),
            height: MediaQuery.of(context).size.height * 0.7,
          ),
          Container(
            color: Color(0xFF4f3c75),
            height: MediaQuery.of(context).size.height * 0.15,
          )

        ],
      ),
    );
  }
}

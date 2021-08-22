import 'package:flutter/material.dart';

class CardX extends StatefulWidget {
  String content;
  CardX({this.content = " - "});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<CardX> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(widget.content)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BubbleGrid extends StatelessWidget {
  final Color color;
  BubbleGrid({this.color = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(.3),
            spreadRadius: 5,
            blurRadius: 8,
          ),
          BoxShadow(
            spreadRadius: -1,
          )
        ],
      ),
    );
  }
}

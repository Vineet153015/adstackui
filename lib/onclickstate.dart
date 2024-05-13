import 'package:flutter/material.dart';


class MyListTile extends StatefulWidget {
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool _isClicked = false;  // State to track if the ListTile has been clicked

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isClicked = !_isClicked;  // Toggle the state when ListTile is tapped
        });
      },
      child: Container(
        padding: const EdgeInsets.only(left: 23, top: 6, bottom: 8),
        decoration: BoxDecoration(
          color: _isClicked ? Colors.grey : Colors.white,  // Conditional background color
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
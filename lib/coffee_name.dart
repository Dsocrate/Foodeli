import 'package:flutter/material.dart';
class CofeeType extends StatelessWidget {
  final String Type; // we named a string
  final bool Selected ;

  CofeeType({ // we call a function
    required this.Type,
    required this.Selected,


  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25),
        child: Text(
          Type,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Selected ? Colors.orange : Colors.white, // this is for the selected text to change to orange then if not white
          ),)
    );
  }
}

import 'package:flutter/material.dart';

class createbutton extends StatelessWidget {
  String text;
  Function func;
  var btnwidth;
  createbutton({required this.func, required this.text, this.btnwidth = 120.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: btnwidth,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
        ),
        onPressed: () => func(text, context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amberAccent,
        ),
      ),
    );
  }
}

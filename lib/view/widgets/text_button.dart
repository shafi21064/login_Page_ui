import 'package:flutter/material.dart';

class TextButtonW extends StatelessWidget {
  String buttonName;
  double fontSize;

  TextButtonW({Key? key, required this.buttonName, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          buttonName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ));
  }
}

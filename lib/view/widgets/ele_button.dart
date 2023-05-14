import 'package:flutter/material.dart';

class EleButton extends StatelessWidget {
  String buttonName;
  final VoidCallback buttonWork;
  double width, height;

  EleButton(
      {Key? key,
      required this.buttonName,
      required this.buttonWork,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        buttonWork();
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.white),
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }
}

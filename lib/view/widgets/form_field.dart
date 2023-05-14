import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  String? fieldLabelText;

  InputFormField({Key? key, required this.fieldLabelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color: Colors.white) ),
          labelText: fieldLabelText,
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          focusColor: Colors.white),
    );
  }
}

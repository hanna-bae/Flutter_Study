import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String text;
  const FormInput(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(text),
      TextFormField(
        validator: (value) => value!.isEmpty ? 'can\'t be empty' : null,
        obscureText: text == 'Password' ? true : false,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.zero,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.zero,
          ),
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.white,
        ),
      ),
    ]);
  }
}

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final String obscuringCharacter;
  final TextInputType keyboardType;
  final controller;
  final prefixIcon;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    
    
    required this.controller,
    required this.prefixIcon,
     this.obscuringCharacter = '*',
    this.keyboardType = TextInputType.text,// means that the keyboard will be shown as a text input unless otherwise specified in the code of the text field
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: TextField(
        obscureText: obscureText,
        obscuringCharacter: obscuringCharacter,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
      
          fillColor: Colors.white, // Set the background color of the text field
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey, 
            fontStyle: FontStyle.italic, // Set the hint text style
            // Set the hint text color
          ),
          labelText: labelText,
          prefixIcon: prefixIcon, // Add an icon to the left of the text field
          prefixIconColor: Colors.blue,
          // style the prefix icon color
          //iconColor: Colors.blue,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

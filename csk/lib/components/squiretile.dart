import 'package:flutter/material.dart';

class Squiretile extends StatelessWidget {
  final String imagePath;

   Squiretile({super.key,
   required this.imagePath
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color.fromARGB(255, 109, 109, 107),
            width: 0.5,
          ),
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            height: 50,
            width: 55,
            //fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

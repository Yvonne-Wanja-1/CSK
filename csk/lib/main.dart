import 'package:csk/pages/LogInPage.dart';
import 'package:flutter/material.dart';

void main(){
 runApp(MyApp()); 
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
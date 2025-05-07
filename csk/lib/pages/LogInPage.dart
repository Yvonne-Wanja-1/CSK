import 'package:csk/components/button.dart';
import 'package:csk/components/squiretile.dart';
import 'package:csk/components/textfield.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  //text editing controllers
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  //sign in button
  void SignIn() {

  }

  Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 195, 235),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo image
            ClipOval(
              child: Image.asset(
                'images/csk.jpg', // Replace with your image path
                height: 100, // in logical pixels
                width: 100,
                fit: BoxFit.cover,// means that the image will be scaled to fit the container while maintaining its aspect ratio
              ),
            ),

            SizedBox(
              height: 20,
            ), // Add some space between the image and the text
            //welcome back, you've been missed!
            Text(
              'Welcome back, you\'ve been missed!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            //usrname textfield
            MyTextfield(
              hintText: 'username',
              labelText: 'username',
              obscureText: false,

              controller: usernamecontroller,
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(height: 20),
            //password textfield
            MyTextfield(
              hintText: 'password',
              labelText: 'password',
              obscuringCharacter: '*',
              obscureText: true,
              controller: passwordcontroller,
              prefixIcon: Icon(Icons.lock),
            ),
            SizedBox(height: 20),

            //forgot password?
          Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
Padding(
  padding: const EdgeInsets.all(15.0),
  child: Text(
    'Forgot Password?',
    style: TextStyle(
      color: Colors.blue,
      fontSize: 16,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      //underline
      decoration: TextDecoration.underline,
      decorationColor: Colors.blue,
    ),
  ),
)
  ],
          ),

            //sign in button
            MyButton(onTap: SignIn),
            SizedBox(height: 20),

            //or continue with
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    children: [
      Expanded(
        child: Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 10,// means that the line will start 20 pixels from the left
          endIndent: 10,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Or continue with',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            )),
      ),
      Expanded(
        child: Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
      ),
  
  
  
    ],
  
  
  ),
),
            SizedBox(height: 20),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
                //google buttons
            Squiretile(imagePath: 'images/google.png'),
            SizedBox(height: 20),
SizedBox(width: 10),
            //apple button
            Squiretile(imagePath: 'images/apple.png'),
            SizedBox(height: 15),
  ],
),





           
      //not a member? register now
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Not a member?',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    SizedBox(width: 5), // Moved outside the Padding widget
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Register Now',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
        ),
      ),
    ),
  ],
),
          ],
        ),
      ),
    );
  }
}

import 'package:csk/components/button.dart';
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
      backgroundColor: Color(0xFFCECFD1),
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
                fit: BoxFit.cover,
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
                fontWeight: FontWeight.bold,
                color: Colors.black,
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
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            SizedBox(height: 20),

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

            //google and apple buttons

            //not a member? register now
          ],
        ),
      ),
    );
  }
}

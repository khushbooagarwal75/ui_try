import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_try/views/signup_view.dart';

import '../custom/custom_textButton.dart';
import '../custom/custom_textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Enter your credential for login",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            CustomTextfield(
              type: TextInputType.text,
              label: "Username",
              controller: username,
              prefixIcon: Icon(Icons.person, size: 28,),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextfield(
              type: TextInputType.visiblePassword,
              label: "Password",
              controller: password,
              prefixIcon: Icon(Icons.lock_outline,size: 28,),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepOrange,
                    ),
                    child: CustomButton(
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      text: "Login Now",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            RichText(
              text: TextSpan(
                  text: " Forgot Password? ",
                  style: TextStyle(color: Colors.deepOrange)),
            ),
            SizedBox(
              height: 150,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: " Sign Up ",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ));
                    },
                  style: TextStyle(color: Colors.deepOrange)),
            ])),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Container(
                height: 4, // Set the thickness of the line
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.orange,
                    ],
                    stops: [0.72, 0.3], // Control the division of colors
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

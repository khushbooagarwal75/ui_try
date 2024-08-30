import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_try/custom/custom_textButton.dart';
import 'package:ui_try/custom/custom_textfield.dart';
import 'package:ui_try/views/login_View.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Sign up",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Create your account",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            CustomTextfield(
              type: TextInputType.text,
              label: "Username",
              controller: username,
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextfield(
              type: TextInputType.emailAddress,
              label: "Email",
              controller: email,
              prefixIcon: Icon(Icons.email),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextfield(
              label: "Password",
              controller: password,
              prefixIcon: Icon(Icons.lock_outline), type: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextfield(
              type:TextInputType.visiblePassword,
              label: "Confirm Password",
              controller: confirmPassword,
              prefixIcon: Icon(Icons.lock_outline),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              color: Colors.deepOrange,
              text: "Sign up",
              textColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Or"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange.shade400,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata_outlined),
                      RichText(
                        text:  TextSpan(
                          children: [
                            TextSpan(
                                text: "Log In with ",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: "Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RichText(
                text:  TextSpan(children: [
              TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: " Login ",recognizer: TapGestureRecognizer()..onTap = () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
              }, style: TextStyle(color: Colors.deepOrange)),
            ])
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.black,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),

      //backgroundColor: Colors.white,
    );
  }
}

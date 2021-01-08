import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12.0,
              ),
              text: "By signing in, you agree to the ",
              children: [
                TextSpan(
                  text: "Privacy policy",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("Clicked privacy policy");
                    },
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: " and its ",
                ),
                TextSpan(
                  text: "Terms of use",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("Clicked terms of use");
                    },
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: ".",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

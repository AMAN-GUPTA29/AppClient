import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:review/Screens/FormInput/inputpage.dart';
import 'package:review/Screens/loginSignup/Welcome.dart';
import 'package:review/Screens/loginSignup/login.dart';
import 'package:review/Screens/loginSignup/signup.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  void tocontent(String value, BuildContext context) {
    if (value == 'FormPage') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InputPage(),
        ),
      );
    }

    if (value == 'Login') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }
    if (value == 'Signup') {
      StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            return WelcomeScreen();
          } else {
            return SignUp();
          }
        },
      );
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => SignUp()),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                tocontent('FormPage', context);
              },
              child: Text('FormInputPage'),
            ),
            ElevatedButton(
              onPressed: () {
                tocontent('Login', context);
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                tocontent('Signup', context);
              },
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:review/Screens/landingpage/landingpage.dart';
import 'package:review/Screens/loginSignup/signupmobile.dart';
import 'package:review/Screens/privacypolicy/privacypolicy.dart';

import '../FormInput/inputpage.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void tocontent(String value, BuildContext context) {
    if (value == 'FormPage') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InputPage(),
        ),
      );
    }

    if (value == 'Landing') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LandingPage(),
        ),
      );
    }

    if (value == 'Privacy') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PrivacyPolicy(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text('Welcome'),
        ),
        ElevatedButton(
          onPressed: () {
            tocontent('FormPage', context);
          },
          child: Text('FormInputPage'),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            tocontent('Landing', context);
          },
          child: Text('LandingPage'),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            tocontent('Privacy', context);
          },
          child: Text('PrivacyPolicyPage'),
        ),
        SizedBox(
          height: 100,
        ),
        IconButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            // Navigator.pop(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SignUpMobile(),
            //   ),
            // );
          },
          icon: Icon(
            Icons.exit_to_app,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ]),
    );
  }
}

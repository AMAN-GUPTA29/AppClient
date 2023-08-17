import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:review/Screens/FormInput/inputpage.dart';
import 'package:review/Screens/loginSignup/signupmobile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  Map<String, dynamic>? _userData;

  void signinapp(String val) async {
    if (val == 'google') {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      print(userCredential.user?.displayName);
    }

    // if (val == 'facebook') {
    //   final LoginResult loginResult =
    //       await FacebookAuth.instance.login(permissions: ['email']);

    //   if (loginResult == LoginStatus.success) {
    //     final userData = await FacebookAuth.instance.getUserData();

    //     _userData = userData;
    //   } else {
    //     print(loginResult.message);
    //   }
    //   final OAuthCredential oAuthCredential =
    //       FacebookAuthProvider.credential(loginResult.accessToken!.token);
    // }
  }

  void toNext(String value, BuildContext context) {
    if (value == 'Mobile') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignUpMobile(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img/genral/logo.png'),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'New to this site?',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 25),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    toNext('Mobile', context);
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.only(
                          left: 80, right: 80, top: 15, bottom: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 105.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 105.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Sign in with facebook or Google',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'img/loginsignup/facebook.jpg',
                        width: 25,
                      ),
                      label: Text('  Login with Facebook'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade800,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        signinapp('google');
                      },
                      icon: Image.asset(
                        'img/loginsignup/google.jpg',
                        width: 25,
                        alignment: Alignment.centerLeft,
                      ),
                      label: Text('    Login with Google'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        fixedSize: Size(195, 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

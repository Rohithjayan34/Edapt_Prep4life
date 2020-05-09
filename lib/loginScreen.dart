import 'package:Prep4life/enterScreen.dart';
import 'package:Prep4life/secondPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splashscreen/splashscreen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var loggedIn = false;
  var firebaseAuth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: _buildSocialLogin());
  }

  _buildSocialLogin() {
    return Scaffold(
      body: Container(
          color: Colors.white38,
          child: Center(
            child: loggedIn
                ? _splashScreen()
                : Stack(
              children: <Widget>[
                SizedBox.expand(
                  child: _buildUpText(),
                ),
                Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // wrap height
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      // stretch across width of screen
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: _buildGoogleLoginButton(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0,left: 15.0,right: 15.0,bottom: 55.0),
                          child: _buildFacebookLoginButton(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Container _buildGoogleLoginButton() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 52,
        child: RaisedButton(
            onPressed: () {
              initiateSignIn("G");
            },
            color: Colors.blue,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            textColor: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.google), onPressed: () {
                  print('pressed');
                },
                ),
                Text("Login with Google",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            )),
      ),
    );
  }

  Container _buildFacebookLoginButton() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 52,
        child: RaisedButton(
            materialTapTargetSize: MaterialTapTargetSize.padded,
            onPressed: () {
              initiateSignIn("FB");
            },
            color: Color.fromRGBO(27, 76, 213, 1),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            textColor: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook), onPressed: () {
                  print('pressed');
                },
                ),

                Text(
                  "Login with Facebook",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Container _buildUpText() {
    return Container(
      margin: EdgeInsets.only(top: 76),
      child: Padding(
        padding: const EdgeInsets.only(top:200.0),
        child: Text(
          "Prep4 Life",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
          ),
        ),
      ),
    );
  }


  _splashScreen() {
    return Scaffold(
      body: Center(
        child: new SplashScreen(

          seconds: 4,
          navigateAfterSeconds: SecondScreen(),
          loaderColor: Colors.red,



        ),
      ),
    );
  }


  void initiateSignIn(String type) {
    _handleSignIn(type).then((result) {
      if (result == 1) {
        setState(() {
          loggedIn = true;
        });
      } else {

      }
    });
  }

  Future<int> _handleSignIn(String type) async {
    switch (type) {
      case "FB":
        FacebookLoginResult facebookLoginResult = await _handleFBSignIn();
        final accessToken = facebookLoginResult.accessToken.token;
        if (facebookLoginResult.status == FacebookLoginStatus.loggedIn) {
          final facebookAuthCred =
          FacebookAuthProvider.getCredential(accessToken: accessToken);
          final user =
          await firebaseAuth.signInWithCredential(facebookAuthCred);
          print("User : " + user.displayName);
          return 1;
        } else
          return 0;
        break;
      case "G":
        try {
          GoogleSignInAccount googleSignInAccount = await _handleGoogleSignIn();
          final googleAuth = await googleSignInAccount.authentication;
          final googleAuthCred = GoogleAuthProvider.getCredential(
              idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
          final user = await firebaseAuth.signInWithCredential(googleAuthCred);
          print("User : " + user.displayName);
          return 1;
        } catch (error) {
          return 0;
        }
    }
    return 0;
  }

  Future<FacebookLoginResult> _handleFBSignIn() async {
    FacebookLogin facebookLogin = FacebookLogin();
    FacebookLoginResult facebookLoginResult =
    await facebookLogin.logInWithReadPermissions(['email']);
    switch (facebookLoginResult.status) {
      case FacebookLoginStatus.cancelledByUser:
        print("Cancelled");
        break;
      case FacebookLoginStatus.error:
        print("error");
        break;
      case FacebookLoginStatus.loggedIn:
        print("Logged In");
        break;
    }
    return facebookLoginResult;
  }

  Future<GoogleSignInAccount> _handleGoogleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly']);
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    return googleSignInAccount;
  }
}

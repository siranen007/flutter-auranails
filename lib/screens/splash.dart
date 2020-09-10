import 'package:auranails/screens/home.dart';
import 'package:auranails/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );

  @override
  Widget build(BuildContext context) {
    final user = context.watchSignedInUser();
    user.map(
      (value) {
        _navigateToHomeScreen(context);
      },
      empty: (_) {
        _navigateToAuthScreen(context);
      },
      initializing: (_) {
        print('Initializing....');
      },
    );

    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

void _navigateToHomeScreen(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => Navigator.of(context).pushReplacement(MyHomePage.route),
  );
}

void _navigateToAuthScreen(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => Navigator.of(context).pushReplacement(WelcomeScreen.route),
  );
}

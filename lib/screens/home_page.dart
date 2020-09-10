// import 'package:auranails/screens/home.dart';
import 'package:auranails/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  // static MaterialPageRoute get route => MaterialPageRoute(
  //       builder: (context) => HomePage(),
  //     );
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            context.signOut();
            Navigator.of(context).push(MyHomePage.route);
          },
          child: const Text('Sign Out'),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

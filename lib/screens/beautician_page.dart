import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:auranails/utility/background_painter.dart';
import 'package:auranails/screens/home.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class BeauticainPage extends StatefulWidget {
  @override
  _BeauticainPageState createState() => _BeauticainPageState();
}

class _BeauticainPageState extends State<BeauticainPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  ValueNotifier<bool> showSignInPage = ValueNotifier<bool>(true);

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(
                animation: _controller.view,
              ),
            ),
          ),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800),
              child: ValueListenableBuilder(
                valueListenable: showSignInPage,
                builder: (context, value, child) {
                  return PageTransitionSwitcher(
                    duration: Duration(microseconds: 800),
                    transitionBuilder: (child, animation, secondaryAnimaion) {
                      return SharedAxisTransition(
                        animation: animation,
                        secondaryAnimation: secondaryAnimaion,
                        transitionType: SharedAxisTransitionType.vertical,
                        fillColor: Colors.transparent,
                        child: child,
                      );
                    },
                    child: RaisedButton(
                      onPressed: () {
                        context.signOut();
                        Navigator.of(context).push(MyHomePage.route);
                      },
                      child: const Text('Sign Out'),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

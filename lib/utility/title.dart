import 'package:flutter/material.dart';

class loginTitle extends StatelessWidget {
  const loginTitle({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 34,
      ),
    );
  }
}

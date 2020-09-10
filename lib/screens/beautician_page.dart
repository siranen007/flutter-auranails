import 'package:flutter/material.dart';

class BeauticainPage extends StatefulWidget {
  @override
  _BeauticainPageState createState() => _BeauticainPageState();
}

class _BeauticainPageState extends State<BeauticainPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beautician',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override

  bool get wantKeepAlive => true;
}

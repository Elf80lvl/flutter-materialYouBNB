import 'package:flutter/material.dart';

class Games_Page extends StatefulWidget {
  const Games_Page({Key? key}) : super(key: key);

  @override
  _Games_PageState createState() => _Games_PageState();
}

class _Games_PageState extends State<Games_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Games'),
      ),
      body: Center(
        child: Text('Games Page'),
      ),
    );
  }
}

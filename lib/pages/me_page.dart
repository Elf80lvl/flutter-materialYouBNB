import 'package:flutter/material.dart';

class Me_Page extends StatefulWidget {
  const Me_Page({Key? key}) : super(key: key);

  @override
  _Me_PageState createState() => _Me_PageState();
}

class _Me_PageState extends State<Me_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Me'),
      ),
      body: Center(
        child: Text('Me Page'),
      ),
    );
  }
}

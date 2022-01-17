import 'package:flutter/material.dart';

class Settings_Page extends StatefulWidget {
  const Settings_Page({Key? key}) : super(key: key);

  @override
  _Settings_PageState createState() => _Settings_PageState();
}

class _Settings_PageState extends State<Settings_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Settings Page',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text('with new FloatingActionButton.small()'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: Icon(Icons.plus_one),
      ),
    );
  }
}

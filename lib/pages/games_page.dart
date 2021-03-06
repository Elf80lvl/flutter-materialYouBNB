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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Games Page',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text('with new FloatingActionButton.large()'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}

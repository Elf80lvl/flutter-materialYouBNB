import 'package:flutter/material.dart';

class Me_Page extends StatefulWidget {
  const Me_Page({Key? key}) : super(key: key);

  @override
  _Me_PageState createState() => _Me_PageState();
}

class _Me_PageState extends State<Me_Page> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Me'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Me Page',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('with new FloatingActionButton.extended()'),
              SizedBox(height: 16),
              Text(
                'counter: $counter',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'counter will keep its state after navigating to a different screen because of using IndexedStack in body (main.dart)',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                //*increase height of the button
                //extendedSizeConstraints: BoxConstraints.tightFor(height: 80),
                )),
        child: FloatingActionButton.extended(
          //backgroundColor: Colors.purple,
          //foregroundColor: Colors.pink,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
          //extendedIconLabelSpacing: 16,
          //extendedPadding: EdgeInsets.all(24),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          label: Text('Increase'),
          icon: Icon(Icons.plus_one),
        ),
      ),
    );
  }
}

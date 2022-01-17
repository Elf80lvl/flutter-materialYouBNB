import 'package:flutter/material.dart';

class MoreSettingsTab extends StatefulWidget {
  const MoreSettingsTab({Key? key}) : super(key: key);

  @override
  _MoreSettingsTabState createState() => _MoreSettingsTabState();
}

class _MoreSettingsTabState extends State<MoreSettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Tab'),
    );
  }
}

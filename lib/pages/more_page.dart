import 'package:flutter/material.dart';
import 'package:material_you_navigbar/pages/tabs/feed.dart';
import 'package:material_you_navigbar/pages/tabs/home.dart';
import 'package:material_you_navigbar/pages/tabs/profile.dart';
import 'package:material_you_navigbar/pages/tabs/settings.dart';

class More_Page extends StatefulWidget {
  const More_Page({Key? key}) : super(key: key);

  @override
  _More_PageState createState() => _More_PageState();
}

class _More_PageState extends State<More_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('More'),
            bottom: const TabBar(
              indicatorWeight: 5,
              //*scroll thru many tabs
              //isScrollable: true,
              tabs: [
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Feed',
                ),
                Tab(
                  text: 'Profile',
                ),
                Tab(
                  text: 'Settings',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              MoreHomeTab(),
              MoreFeedTab(),
              MoreProfileTab(),
              MoreSettingsTab()
            ],
          )),
    );
  }
}

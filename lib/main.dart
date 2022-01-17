import 'package:flutter/material.dart';
import 'package:material_you_navigbar/pages/games_page.dart';
import 'package:material_you_navigbar/pages/me_page.dart';
import 'package:material_you_navigbar/pages/more_page.dart';
import 'package:material_you_navigbar/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  final screens = [
    Me_Page(),
    Games_Page(),
    Settings_Page(),
    More_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          //*color of the selected icon
          indicatorColor: Colors.red[100],
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          //height: 65,
          //backgroundColor: Colors.blue.shade100,
          //labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          //animationDuration: Duration(seconds: 3),
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Me',
            ),
            NavigationDestination(
              icon: Icon(Icons.sports_hockey_outlined),
              selectedIcon: Icon(Icons.sports_hockey),
              label: 'Games',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: 'Settings',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_outlined),
              selectedIcon: Icon(Icons.more),
              label: 'More',
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: index,
        children: screens,
      ),
      //screens[index],
    );
  }
}

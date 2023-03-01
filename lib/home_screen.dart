// import 'dart:html';

import 'package:chapter_5/screenOne.dart';
import 'package:chapter_5/screen_4.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              accountName: Text('Gmail'),
              accountEmail: Text('MubasharBasharat122@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/9833110/pexels-photo-9833110.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text('Page 1'),
                onTap: (() {
                  Navigator.pushNamed(context, screenTwo.id);
                })),
            ListTile(
              leading: Icon(Icons.access_time_rounded),
              title: Text('Page 2'),
              onTap: (() {
                Navigator.pushNamed(context, screen_4.id);
              }),
            ),
            ListTile(
                leading: Icon(Icons.earbuds_sharp),
                title: Text('Page 3'),
                onTap: (() {
                  Navigator.pushNamed(context, HomeScreen.id);
                })),
          ],
        )),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
              child: Text(
            'Navigation Drawer Screen 0',
            style: TextStyle(
              color: Colors.black,
            ),
          )),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, screenTwo.id);
                  },
                  child: Center(
                      child: Text(
                    'Move to screen 1',
                    style: TextStyle(color: Colors.teal),
                  )))
            ]),
      ),
    );
  }
}

import 'package:chapter_5/home_screen.dart';
import 'package:flutter/material.dart';

class screen_4 extends StatefulWidget {
  static const String id = 'screen_4';
  const screen_4({super.key});

  @override
  State<screen_4> createState() => _screen_4State();
}

class _screen_4State extends State<screen_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
            child: Text(
          'Navigation Drawer Screen 4',
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
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                child: Center(
                    child: Text('Back To home screen',
                        style: TextStyle(color: Colors.orange)))),
          ]),
    );
  }
}

import 'package:chapter_5/home_screen.dart';
import 'package:chapter_5/screenOne.dart';
import 'package:chapter_5/screen_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        screenTwo.id: (context) => screenTwo(),
        screen_4.id: (context) => screen_4(),
      },
    );
  }
}

import 'package:chapter_5/home_screen.dart';
import 'package:chapter_5/screen_4.dart';
import 'package:flutter/material.dart';

class screenTwo extends StatefulWidget {
  static const String id = 'screenOne';
  const screenTwo({super.key});

  @override
  State<screenTwo> createState() => _screenTwoState();
}

class _screenTwoState extends State<screenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
            child: Text(
          'Navigation Drawer Screen 2',
          style: TextStyle(
            color: Colors.black,
          ),
        )),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/9833110/pexels-photo-9833110.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text('Page 1'),
                        onTap: (() {
                          Navigator.pushNamed(context, screen_4.id);
                        }));
                  })),
            )
          ]),
    );
  }
}

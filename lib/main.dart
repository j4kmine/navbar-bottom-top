import 'package:flutter/material.dart';
import 'package:navigation_drawer/screens/home.dart';
import 'package:navigation_drawer/screens/settings.dart';
import 'package:navigation_drawer/screens/videos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codding with Curry',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: 'home',
      routes: {
        'home':(context)=>Home(),
        'videos':(context)=>Videos(),
        'settings':(context)=>Settings()
      },

    );
  }
}



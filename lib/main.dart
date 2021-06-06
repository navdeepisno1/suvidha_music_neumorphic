import 'package:flutter/material.dart';
import 'colors.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPlayer',
      theme: ThemeData(
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: Colors.grey[800]),
          iconTheme: IconThemeData(color: Colors.grey[800])),
      home: Home(),
    );
  }
}

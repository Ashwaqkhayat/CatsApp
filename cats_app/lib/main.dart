import 'package:cats_app/data/cats.dart';
import 'package:cats_app/model/cat.dart';
import 'package:cats_app/screens/cats_home_screen.dart';
import 'package:flutter/material.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();
final List fCats = [];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen(),
    );
  }
}

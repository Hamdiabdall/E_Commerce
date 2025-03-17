import 'package:flutter/material.dart';
import 'package:flutter_app/screens/cart_screen.dart';
import 'package:flutter_app/screens/page_barre_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageBarreNavigation(),
    );
  }
}
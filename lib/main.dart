import 'package:flutter/material.dart';
import 'package:proyect/features/screens/cart/ui/cart_screen.dart';
import 'package:proyect/features/screens/home/ui/home_Screen.dart';
import 'package:proyect/features/screens/product/ui/product_view_screen.dart';
import 'package:proyect/features/screens/search/ui/search_screen.dart';

import 'features/screens/profile/ui/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

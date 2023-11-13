import 'package:flutter/material.dart';
import 'package:main/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bicycle Inventory',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x0003002e)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
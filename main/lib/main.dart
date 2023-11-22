import 'package:flutter/material.dart';
import 'package:main/screens/login.dart';
import 'package:main/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Bicycle Inventory',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x0003002e)),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      )
    );
  }
}
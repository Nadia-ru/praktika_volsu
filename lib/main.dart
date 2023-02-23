import 'package:flutter/material.dart';

import 'widgets/auth_widget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          backgroundColor: const Color(0xFFF6F8FB),
          appBarTheme: const AppBarTheme(

              toolbarHeight: 56
          )
      ),
      home:AuthWidget(),
    );
  }
}

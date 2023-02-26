import 'package:flutter/material.dart';
import 'package:praktika/widgets/auth/brand_selection_widget.dart';
import 'widgets/main_screen/main_screen_widget.dart';

import 'widgets/auth/auth_widget.dart';

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
          fontFamily: "Inter",

          backgroundColor: const Color(0xFFF6F8FB),
          appBarTheme: const AppBarTheme(toolbarHeight: 56)),

      routes: {
        '/auth' :(context) => const BrandSelectionWidget(),
        '/auth/data_input' :(context) => const AuthWidget(),
        '/main_screen' :(context) => const MainScreenWidget(),
      },
      initialRoute: '/auth/data_input',
    );
  }
}

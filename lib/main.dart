import 'package:flutter/material.dart';
import 'widgets/auth/splash_screen_widget.dart';
import 'widgets/auth/code_input_widget.dart';
import 'widgets/auth/brand_selection_widget.dart';
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
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color(0xFF136DEC),
            unselectedItemColor: Color(0xFF132339),
           selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)
          ),
          backgroundColor: const Color(0xFFF6F8FB),
          appBarTheme: const AppBarTheme(toolbarHeight: 56)),
      routes: {
        '/auth' :(context) => const BrandSelectionWidget(),
        '/auth/data_input' :(context) => const AuthWidget(),
        '/auth/code_input' :(context) => const CodeInputWidget(),
        '/auth/splash_screen' :(context) => const SplashScreenWidget(),
        '/main_screen' :(context) => const MainScreenWidget(),
      },
      initialRoute: '/main_screen',
    );
  }
}

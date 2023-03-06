import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context,'/main_screen');
    });
    return Scaffold(
      body: Column(
        children:  [
          const SizedBox(height: 160,),
          Center(child: Image.asset( 'images/logo.png')),
          const SizedBox(height: 8,),
          const Center(child: Text("Сушивесла",
              style: TextStyle(
            fontSize: 24,
            color: Color(0xFF132339),
            fontWeight: FontWeight.w400,
          )),),
          const SizedBox(height: 240,),
          const SizedBox(
            height: 48,
            width: 48,
            child: CircularProgressIndicator(
              //value: 0.8,
              color: Color(0xFF136DEC),
              strokeWidth: 4,
            ),
          ),
          const SizedBox(height: 8,),
          const Center(child: Text("Настраиваем приложение...",style: TextStyle(
            fontSize:16,
            color: Color(0xFF52637A),
            fontWeight: FontWeight.w400,),))
        ],
      ),
    );
  }
}

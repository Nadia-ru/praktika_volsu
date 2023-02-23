import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Авторизация",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF132339),
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter'),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text("Помощь",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF136DEC),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter')),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

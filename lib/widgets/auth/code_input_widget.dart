import 'package:flutter/material.dart';

class CodeInputWidget extends StatefulWidget {
  const CodeInputWidget({Key? key}) : super(key: key);

  @override
  State<CodeInputWidget> createState() => _CodeInputWidgetState();
}

class _CodeInputWidgetState extends State<CodeInputWidget> {
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
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text("Помощь",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF136DEC),
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ]),
      body: Column(
        children: const [
          SizedBox(
            height: 96,
          ),
          Text("Введите пароль",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF132339),
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }
}

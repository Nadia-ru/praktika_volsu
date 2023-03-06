import 'package:flutter/material.dart';

class OneNewsWidget extends StatefulWidget {
  const OneNewsWidget({Key? key}) : super(key: key);

  @override
  State<OneNewsWidget> createState() => _OneNewsWidgetState();
}

class _OneNewsWidgetState extends State<OneNewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
      Flex(direction: Axis.vertical,
      mainAxisSize: MainAxisSize.max,
      children: [Image.asset('images/new1.png')])
        ],
      ),
    );
  }
}

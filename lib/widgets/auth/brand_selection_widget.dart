import 'package:flutter/material.dart';

class BrandSelectionWidget extends StatefulWidget {
  const BrandSelectionWidget({Key? key}) : super(key: key);

  @override
  State<BrandSelectionWidget> createState() => _BrandSelectionWidgetState();
}

class _BrandSelectionWidgetState extends State<BrandSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Привет,\nвыбери компанию",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF132339),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            _MenuWidgetRow(icon: "images/icon1.png", text: 'Сушивесла'),
            _MenuWidgetRow(icon: "images/icon2.png", text: 'Блинбери'),
            _MenuWidgetRow(icon: "images/icon3.png", text: 'Demo'),
            _MenuWidgetRow(icon: "images/icon4.png", text: 'Test'),
          ],
        ),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final String icon;
  final String text;

  const _MenuWidgetRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        height: 56,
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/auth/data_input');
          },

          style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFFFFFFFF),
              side: const BorderSide(color: Colors.transparent),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              Image.asset(icon),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF132339),
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

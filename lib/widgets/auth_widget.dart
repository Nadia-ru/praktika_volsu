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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 80),
            const _RadioButton(),
            const SizedBox(height: 8),
            const _FormWidgetEmail(),
            const _FormWidgetPhone(),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF136DEC)),
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 16.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )),
                  ),
                  onPressed: () {},
                  child: const Text('Дальше')),
            )
          ],
        ),
      ),
    );
  }
}

class _FormWidgetEmail extends StatefulWidget {
  const _FormWidgetEmail({Key? key}) : super(key: key);

  @override
  State<_FormWidgetEmail> createState() => _FormWidgetStateEmail();
}

class _FormWidgetStateEmail extends State<_FormWidgetEmail> {
  @override
  Widget build(BuildContext context) {
    const textStylePol = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF136DEC));
    const textStyleStart = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF52637A));
    return Column(
      children: const [
        TextField(
          decoration: InputDecoration(
              hintText: 'Введите почту',
              hintStyle: textStyleStart,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color(0xFFE3E7EC), width: 1.0)),
              contentPadding: EdgeInsets.symmetric(horizontal: 12)),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Введите пароль',
              hintStyle: textStyleStart,
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Color(0xFFE3E7EC), width: 1.0),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12)),
        ),
      ],
    );
  }
}

class _FormWidgetPhone extends StatefulWidget {
  const _FormWidgetPhone({Key? key}) : super(key: key);

  @override
  State<_FormWidgetPhone> createState() => _FormWidgetPhoneState();
}

class _FormWidgetPhoneState extends State<_FormWidgetPhone> {
  @override
  Widget build(BuildContext context) {
    const textStyleStart = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF52637A));
    return   const TextField(
      decoration: InputDecoration(
          hintText: 'Введите номер телефона',
          hintStyle: textStyleStart,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: Color(0xFFE3E7EC), width: 1.0)),
          contentPadding: EdgeInsets.symmetric(horizontal: 12)),
    );
  }
}


class _RadioButton extends StatefulWidget {
  const _RadioButton({Key? key}) : super(key: key);

  @override
  State<_RadioButton> createState() => _RadioButtonState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _RadioButtonState extends State<_RadioButton> {
  int value = 1;

  Widget CustomRadioButton(String text, int index) {
    return Expanded(

      child: SizedBox(
        height: 40,
        child: OutlinedButton(
          onPressed: () {
            setState(() {
              value = index;
            });
          },

          style: OutlinedButton.styleFrom(side: BorderSide.none,
            backgroundColor: (value == index) ? const Color(0xFFD2E3F7) : Colors.transparent,
            padding: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
          ),

          child: Text(
            text,

            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: (value == index)
                    ? const Color(0xFF136DEC)
                    : const Color(0xFF132339)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(

      children: <Widget>[
        CustomRadioButton("Номер телефона", 1),
        CustomRadioButton("Почта", 2),
      ],
    );
  }
}

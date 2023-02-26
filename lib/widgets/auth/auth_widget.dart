import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

final _emailTextController = TextEditingController();
final _passwordTextController = TextEditingController();
final _phoneTextController = TextEditingController();


class _AuthWidgetState extends State<AuthWidget> {

  String? errorText =null;

  void _auth() {
    final email = _emailTextController.text;
    final password = _passwordTextController.text;
    final phone = _phoneTextController.text;
    if (email == 'login' && password == 'login' && phone == '88005553535') {
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      if (email != 'login') {
        errorText = 'Пожалуйста, измените почту и повторите попытку';
        print('error login');
      } else if (password != 'login') {
        errorText = 'Неверный пароль, введите корректные данные';
      } else if (phone != '88005553535') {
        errorText = 'Пожалуйста, измените номер телефона и повторите попытку';
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
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
              onPressed: _auth,
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
            if (errorText != null)...[
              ColoredBox(
                color: const Color(0xFFF4E5E3),
                child: SizedBox(
                    height: 64,
                    child: Text(
                        errorText,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFE6360F),
                          fontWeight: FontWeight.w400,
                        )
                    )),
              ),
            const SizedBox(
              height: 64,
            )]
            else...[ const SizedBox(height: 80)],
            const _RadioButton(),
            const SizedBox(height: 8),
            // if(_formEmail==true)
            const _FormWidgetEmail(),
            // else
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
                        const EdgeInsets.symmetric(vertical: 16.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )),
                  ),
                  onPressed: _auth,
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
      children: [
        TextField(
          controller: _emailTextController,
          decoration: const InputDecoration(
              hintText: 'Введите почту',
              hintStyle: textStyleStart,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color(0xFFE3E7EC), width: 1.0)),
              contentPadding: EdgeInsets.symmetric(horizontal: 12)),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _passwordTextController,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: const InputDecoration(
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
    return TextField(
      controller: _phoneTextController,
      decoration: const InputDecoration(
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
  bool? _formEmail = true;

  Widget CustomRadioButton(String text, int index) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: OutlinedButton(
          onPressed: () {
            setState(() {
              value = index;
              //_formEmail = (value == 1) ? true : false;
            });
          },
          style: OutlinedButton.styleFrom(
              side: BorderSide.none,
              backgroundColor: (value == index)
                  ? const Color(0xFFD2E3F7)
                  : Colors.transparent,
              padding: const EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
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
        CustomRadioButton("Почта", 1),
        CustomRadioButton("Номер телефона", 2),
      ],
    );
  }
}

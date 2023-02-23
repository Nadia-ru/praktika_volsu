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
            Row(
              children: [],
            ),
            const _FormWidget(),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: TextButton(

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF136DEC)),
                  foregroundColor: MaterialStateProperty.all(Color(0xFFFFFFFF)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16,fontWeight: FontWeight.w400,)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                    )),
                ),

                  onPressed: (){},
                  child: Text('Дальше')),
            )
          ],
        ),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => _FormWidgetStateEmail();
}

class _FormWidgetStateEmail extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    const textStylePol = const TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF136DEC));
    const textStyleStart = const TextStyle(
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
              contentPadding: EdgeInsets.symmetric(horizontal: 12)
          ),
        ),
        SizedBox(height: 8,),
        TextField(
          decoration: InputDecoration(
            hintText: 'Введите пароль',
            hintStyle: textStyleStart,
            suffixIcon: Icon(Icons.remove_red_eye_rounded),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Color(0xFFE3E7EC), width: 1.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12)
          ),
        ),
      ],
    );
  }
}

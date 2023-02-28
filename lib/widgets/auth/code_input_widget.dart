import 'package:flutter/material.dart';

class CodeInputWidget extends StatefulWidget {
  const CodeInputWidget({Key? key}) : super(key: key);

  @override
  State<CodeInputWidget> createState() => _CodeInputWidgetState();
}

class _CodeInputWidgetState extends State<CodeInputWidget> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;
  String? errorText =null;

  void _code_input(){
   String srv = _fieldOne.text +
        _fieldTwo.text +
        _fieldThree.text +
        _fieldFour.text;
   if(srv=="0000")  {
     errorText = null;
   Navigator.of(context).pushNamed('/main_screen');
  } else {
     errorText ="Неверный код, введите корректные данные";
  }
  }
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
        children:  [
          const SizedBox(
            height: 96,
          ),
          const Text("Введите пароль",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF132339),
                fontWeight: FontWeight.w500,
              )),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OtpInput(_fieldOne, true), // auto focus
              OtpInput(_fieldTwo, false),
              OtpInput(_fieldThree, false),
              OtpInput(_fieldFour, false)
            ],
          ),
          const SizedBox(height:24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
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
                  onPressed:_code_input,
                  child: const Text('Дальше')),
            ),
          ),
          const SizedBox(height: 28,),
          const Center(
            child: Text(
          'Выслать еще раз смс, через 00:59',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFB7BEC8),
                  fontWeight: FontWeight.w500,
                )),
          )
        ],
      ),
    );
  }
}
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        height: 48,
        width:48,
        child: TextField(
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          cursorColor: Theme.of(context).primaryColor,
          decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color(0xFFF6F8FB), width: 1.0)),
              counterText: '',
              contentPadding: EdgeInsets.all(0),
              hintText: '*',
              hintStyle: TextStyle(color: Color(0xFF132339), fontSize: 16)),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
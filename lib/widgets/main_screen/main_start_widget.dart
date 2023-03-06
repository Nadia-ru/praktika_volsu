import 'package:flutter/material.dart';

class MainStartWidget extends StatefulWidget {
  const MainStartWidget({Key? key}) : super(key: key);

  @override
  State<MainStartWidget> createState() => _MainStartWidgetState();
}

class _MainStartWidgetState extends State<MainStartWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF136DEC)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Image.asset('images/stori.png')),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF136DEC)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Image.asset('images/stori.png')),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Image.asset('images/stori.png')),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Image.asset('images/stori.png')),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Image.asset('images/stori.png')),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.white,
            padding: EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Избранные мини приложения',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF132339),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/yellow.png',
                      width: 101,
                      height: 101,
                    ),
                    SizedBox(width: 12,),
                    Image.asset(
                      'images/blue.png',
                      width: 101,
                      height: 101,
                    ),
                    SizedBox(width: 12,),
                    Image.asset(
                      'images/orange.png',
                      width: 101,
                      height: 101,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/blue2.png',
                      width: 101,
                      height: 101,
                    ),
                    SizedBox(width: 12,),
                    Image.asset(
                      'images/purple.png',
                      width: 214,
                      height: 101,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Image.asset(
                  'images/red.png',
                  width: 327,
                  height: 101,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            // color: Colors.white,
            padding: EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text(
              'Последние мини приложения',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF132339),
                fontWeight: FontWeight.w400,
              ),
            ),
                const SizedBox(height: 24,),
                Row(
                  children: const [
                    _AppWidget(icon: 'images/app1.png', text: 'Логистика'),
                    _AppWidget(icon: 'images/app2.png', text: 'Франшиза'),
                    _AppWidget(icon: 'images/app3.png', text: 'Сотрудники'),
                    _AppWidget(icon: 'images/app4.png', text: 'Настройка\nбизнеса'),
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: const [
                    _AppWidget(icon: 'images/app3.png', text: 'Сотрудники'),
                    _AppWidget(icon: 'images/app4.png', text: 'Настройка\nбизнеса'),
                    _AppWidget(icon: 'images/app2.png', text: 'Франшиза'),

                    _AppWidget(icon: 'images/app1.png', text: 'Логистика'),

                  ],
                ),

              ]
            )
              ,
          )
        ],
      ),
    );
  }
}

class _AppWidget extends StatelessWidget {
  final String icon;
  final String text;

  const _AppWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(icon),
              const SizedBox(
                width: 4,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF52637A),
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

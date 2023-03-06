import 'package:flutter/material.dart';

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({Key? key}) : super(key: key);

  @override
  State<ApplicationWidget> createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset('images/appicon.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                          Text("Название приложения",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF132339),
                                fontWeight: FontWeight.w400,)
                          ),
                          Text("Небольшое описание приложения",
                              style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF52637A),
                            fontWeight: FontWeight.w400,)),
                        ]),
                      ),
                      const Icon(Icons.star,color: Color(0xFFB7BEC8),)
                    ],
                  ),
                ),
              ));
        });
  }
}

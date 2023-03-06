import 'package:flutter/material.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: GestureDetector(
              onTap: () {  Navigator.of(context).pushNamed('/news/one');},
              child: DecoratedBox(

                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Image.asset('images/new1.png'
                      ),
                      const SizedBox(height: 8,),
                      const Text("Сегодня, 12:43", style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF52637A),
                        fontWeight: FontWeight.w400,
                      ),),
                      const Text("Открылась новая блинная", style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF132339),
                        fontWeight: FontWeight.w400,
                      ),),
                      const Text("Некоторое описание сервиса \nв две строки", style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF52637A),
                        fontWeight: FontWeight.w400,
                      ),),

                    ],
                  ),
                ),
              ),
            ),
          );
      }
    );
  }
}

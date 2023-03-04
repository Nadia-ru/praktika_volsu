import 'package:flutter/material.dart';
import 'package:praktika/widgets/icons/app_bar_icon_icons.dart';
import '/widgets/news/news_widget.dart';
import '../icons/custom_icon_icons.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text('main'),
    Text('prl'),
    NewsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Привет, Ростислав",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF132339),
            fontWeight: FontWeight.w500,
          ),
        ),
        actionsIconTheme: const IconThemeData(
            color: Colors.white
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 24,
             // padding: EdgeInsets.all(4.0),
              icon: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFB7BEC8),
                    shape: BoxShape.circle,
                    //more than 50% of width makes circle
                  ),
                  child: const Icon(
                    AppBarIcon.uv,
                    size: 16,
                  ))),
          IconButton(
              onPressed: () {},
              iconSize: 32,
              icon: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFB7BEC8),
                    shape: BoxShape.circle,
                    //more than 50% of width makes circle
                  ),
                  child: const Icon(
                    AppBarIcon.pm,
                    size: 26,
                  ))),
          IconButton(
              onPressed: () {},
              iconSize: 32,
              icon: Container(

                  decoration: const BoxDecoration(
                      color: Color(0xFFB7BEC8),
                    shape: BoxShape.circle,
                    //more than 50% of width makes circle
                  ),
                  child: const Icon(
                    AppBarIcon.brands,
                    size: 20,
                  ))),
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        iconSize: 18,
        items: const [
          BottomNavigationBarItem(
              label: "Главная",
              icon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(CustomIcon.main),
              )),
          BottomNavigationBarItem(
              label: "Приложения",
              icon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(CustomIcon.prl),
              )),
          BottomNavigationBarItem(
              label: "Новости",
              icon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(CustomIcon.news),
              )),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}

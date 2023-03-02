import 'package:flutter/material.dart';
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

  static const List<Widget> _widgetOptions =<Widget>[
    Text('main'),
    Text('prl'),
    Text('news'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

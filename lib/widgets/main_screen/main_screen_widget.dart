import 'package:flutter/material.dart';
import 'package:praktika/widgets/applications/applications_widget.dart';
import 'package:praktika/widgets/icons/app_bar_icon_icons.dart';
import 'package:praktika/widgets/news/news_widget.dart';
import '../icons/custom_icon_icons.dart';
import 'main_start_widget.dart';

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
    MainStartWidget(),
    ApplicationWidget(),
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
        actions: [
          const SizedBox(
              //<-- SEE HERE
              width: 24,
              height: 24,
              child: FloatingActionButton(
                  //<-- SEE HERE
                  backgroundColor: Color(0xFFB7BEC8),
                  disabledElevation: 0,
                  hoverElevation: 0,
                  onPressed: null,
                  child: Icon(
                    AppBarIcon.uv,
                    size: 16,
                    color: Colors.white,
                  ))),
          const SizedBox(
            width: 8,
          ),
          const SizedBox(
            //<-- SEE HERE
            width: 32,
            height: 32,
            child: FloatingActionButton(
                //<-- SEE HERE
                backgroundColor: Color(0xFFB7BEC8),
                disabledElevation: 0,
                hoverElevation: 0,
                onPressed: null,
                child: Icon(
                  AppBarIcon.pm,
                  size: 26,
                )),
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(32, 32),
                  disabledBackgroundColor: const Color(0xFFB7BEC8),
                  padding: const EdgeInsets.all(7.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: const Icon(
                  AppBarIcon.brands,
                  size: 20,
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: _widgetOptions[_selectedTab],
        ),
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

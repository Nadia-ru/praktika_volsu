import 'package:flutter/material.dart';
import '../icons/custom_icon_icons.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Главная", icon: Icon(CustomIcon.main)),
          BottomNavigationBarItem(label: "Приложения", icon: Icon(CustomIcon.prl)),
          BottomNavigationBarItem(label: "Новости", icon: Icon(CustomIcon.news)),
        ],
      ),
    );
  }
}

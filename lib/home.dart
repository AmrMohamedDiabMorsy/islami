import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

import 'tabs/ahadeth.dart';
import 'tabs/quran.dart';
import 'tabs/radio.dart';
import 'tabs/sebha.dart';
import 'tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/background.png"),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "IsLami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "quran",
                  backgroundColor: MyThemeData.primary,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "sebha",
                  backgroundColor: MyThemeData.primary,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "radio",
                  backgroundColor: MyThemeData.primary,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "ahadeth",
                  backgroundColor: MyThemeData.primary,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "settings",
                  backgroundColor: MyThemeData.primary,
                ),
              ]),
          body: Tabs[index],
        ),
      ],
    );
  }

  List<Widget> Tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    const ahadethTab(),
    const SettingTab(),
  ];
}

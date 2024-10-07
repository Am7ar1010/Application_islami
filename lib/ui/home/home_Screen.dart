import 'package:flutter/material.dart';

import '../teps/hadith tep/hadith view.dart';
import '../teps/quran tep/quran view.dart';
import '../teps/radio tep/radio view.dart';
import '../teps/sebha tep/sebha view.dart';
import '../teps/setting tep/settings view.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  var tapsView = [
    const QuranView(),
    const HadithView(),
    const SebhaView(),
    const RadioView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("islami"),
        ),
        body: tapsView[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (int index) {
            currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadith icn.png")),
                label: "Hadith"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha icn.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}

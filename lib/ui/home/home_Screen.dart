import 'package:application_testing/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            appProvider.getBackgroundPathName(),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
          ),
        ),
        body: tapsView[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (int index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.quranTep),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadith icn.png")),
                label: AppLocalizations.of(context)!.hadithTep),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha icn.png")),
                label: AppLocalizations.of(context)!.sebhaTep),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                label: AppLocalizations.of(context)!.radioTep),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settingsTep),
          ],
        ),
      ),
    );
  }
}

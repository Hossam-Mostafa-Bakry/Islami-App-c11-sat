import 'package:flutter/material.dart';

import '/modules/hadeth/hadeth_view.dart';
import '/modules/quran/quran_view.dart';
import '/modules/radio/radio_view.dart';
import '/modules/settings/settings_view.dart';
import '/modules/tasbeh/tasbeh_view.dart';

// provider State Management

class LayOutPage extends StatefulWidget {
  static const String routeName = "layouts";

  const LayOutPage({super.key});

  @override
  State<LayOutPage> createState() => _LayOutPageState();
}

// versioned files
// unVersioned files

// Commit

class _LayOutPageState extends State<LayOutPage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/home_background.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("إسلامي", style: Theme.of(context).textTheme.titleLarge),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/quran_icn.png"),
              ),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/hadeth_icn.png"),
              ),
              label: "hadith",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/sebha_icn.png"),
                ),
                label: "Tasbeh"),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/radio_icn.png"),
              ),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

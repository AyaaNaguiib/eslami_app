 import 'package:eslami_app/core/assets_manager.dart';
import 'package:eslami_app/core/colors.dart';
import 'package:eslami_app/core/strings.dart';
import 'package:eslami_app/presentation/screens/home/taps/hadithtab/hadith_tab.dart';
import 'package:eslami_app/presentation/screens/home/taps/qurantap/quran_tap.dart';
import 'package:eslami_app/presentation/screens/home/taps/radiotab/radio_tab.dart';
import 'package:eslami_app/presentation/screens/home/taps/sebhatab/sebha_tab.dart';
import 'package:eslami_app/presentation/screens/home/taps/settingstab/settingstab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

    List<Widget> tabs = [
      QuranTab(),
      HadithTab(),
      SebhaTab(),
      RadioTab(),
      SettingsTab(),
    ];

   @override
   Widget build(BuildContext context) {
     return Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.fill,
             image: AssetImage(AssetsManager.LightMainBg))
       ),
       child: Scaffold(
                 appBar: AppBar(
                   title: const Text(StringsManager.appTitle),
                 ),
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: selectedIndex,
           onTap: (index){
             selectedIndex = index;
             setState((){});
           },
           items:const [
             BottomNavigationBarItem(
               backgroundColor: ColorsManager.goldColor,
                 icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),label: StringsManager.quranLabel),
             BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),label:StringsManager.hadithLabel),
             BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),label:StringsManager.tasbehLabel),
             BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),label:StringsManager.radioLabel),
             BottomNavigationBarItem(icon: Icon(Icons.settings),label: StringsManager.settingsLabel),
           ]),
         body: tabs[selectedIndex],


               ),
     );
   }
}

import 'package:eslami_app/presentation/screens/quran_details/widgets/sura_verses_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/assets_manager.dart';
import '../home/taps/qurantap/quran_tap.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index + 1); // non blocking // 1
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.LightMainBg,
              ))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: verses.isEmpty
              ? Center(
            child: CircularProgressIndicator(),
          )
              : ListView.builder(
            itemBuilder: (context, index) =>
                SuraVersesWidget(verse: verses[index]),
            itemCount: verses.length,
          )),
    );
  }

  String add(String n1, String n2) {
    return n1 + n2; // 420
  }

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = fileContent.trim().split('\n'); // verses is not empty

    setState(() {});
  }
}

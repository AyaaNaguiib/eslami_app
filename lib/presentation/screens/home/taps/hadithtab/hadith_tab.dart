import 'package:eslami_app/presentation/screens/home/taps/hadithtab/widgets/hadith_header_widget.dart';
import 'package:eslami_app/presentation/screens/home/taps/hadithtab/widgets/hadith_title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/assets_manager.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) {
      loadHadithFile(); // is async fuc -> Non Blocking
    }
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
          const HadithHeaderWidget(),
          Expanded(
              flex: 3,
              child: allHadithList.isEmpty
                  ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
                  : ListView.separated(
                  itemBuilder: (context, index) =>
                      HadithTitleWidget(hadith: allHadithList[index]),
                  separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 3,
                    height: 6,
                  ),
                  itemCount: allHadithList.length))
        ],
      ),
    );
  }

  String add(String n1, String n2) {
    return n1 + n2; // 105
  }

  void loadHadithFile() async {
    String fileContent =
    await rootBundle.loadString('assets/files/ahadeth.txt'); // blocking
    List<String> hadithList =
    fileContent.trim().split('#'); // contains 50 hadithItem
    for (int i = 0; i < hadithList.length; i++) {
      String hadithItem = hadithList[i]; // 0  1
      List<String> hadithLines =
      hadithItem.trim().split('\n'); // contains hadith as lines
      String title = hadithLines[0]; // get title
      hadithLines.removeAt(0); // removing title
      String content = hadithLines.join('\n');
      print('this is title $title');
      print('this is content $content');
      Hadith hadith = Hadith(title: title, content: content); // first H
      allHadithList.add(hadith); //
    }
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
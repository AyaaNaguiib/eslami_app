

import 'package:flutter/material.dart';

import '../../../core/assets_manager.dart';
import '../../../core/strings.dart';
import '../home/taps/hadithtab/hadith_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.LightMainBg,
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.appTitle),
        ),
        body: Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(children: [
                  Text(
                    hadith.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 28,
                    endIndent: 28,
                  ),
                  Text(
                    hadith.content,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ]),
              ),
            )),
      ),
    );
  }
}
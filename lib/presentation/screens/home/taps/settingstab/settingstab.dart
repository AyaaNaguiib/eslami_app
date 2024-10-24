import 'package:eslami_app/core/colors.dart';
import 'package:eslami_app/presentation/screens/home/taps/settingstab/widgets/language_bottom_sheet.dart';
import 'package:eslami_app/presentation/screens/home/taps/settingstab/widgets/theme_bottom_sheet.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme', style: Theme.of(context).textTheme.headlineLarge,),
          const SizedBox(height:10,),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6,),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: ColorsManager.goldColor,width: 2)
              ),
                child: Text('Light', style:Theme.of(context).textTheme.headlineSmall )),
          ),

          const SizedBox(height:8,),

          Text('Language', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height:4,),
          InkWell(
            onTap: (){
              showLangBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6,),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorsManager.goldColor,width: 2)
                ),
                child: Text('English', style:Theme.of(context).textTheme.headlineSmall )),
          ),


        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context)=>ThemeBottomSheet());
  }

  void showLangBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder:(context)=> LanguageBottomSheet(),);
  }
}

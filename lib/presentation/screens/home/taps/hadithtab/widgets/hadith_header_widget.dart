import 'package:flutter/material.dart';

import '../../../../../../core/strings.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(
                    color: Theme.of(context).primaryColor, width: 3))),
        child: Text(
          StringsManager.elHadithLabel,
          style: Theme.of(context).textTheme.labelMedium,
        )
    );
  }
}
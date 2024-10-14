import 'package:flutter/material.dart';

import '../../../../../../core/routes_manager.dart';
import '../quran_tap.dart';

class QuranItemWidget extends StatelessWidget {
  SuraItem suraItem;

  QuranItemWidget({super.key, required this.suraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.quranDetailRoute,
          arguments: suraItem,
        );
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    suraItem.versesNumber,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                )),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    suraItem.suraName,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}// import 'package:flutter/material.dart';
//
// class QuranItemWidget extends StatelessWidget {
//   String suraName;
//   String versesNumber;
//
//
//    QuranItemWidget({super.key, required this.suraName, required this.versesNumber});
//
//   @override
//   Widget build(BuildContext context) {
//     return IntrinsicHeight(
//       child: Row(
//         children: [
//           Expanded(child: Padding(
//             padding: const EdgeInsets.all(4.0),
//             child: Text(versesNumber, style: Theme.of(context).textTheme.titleMedium, textAlign: TextAlign.center,),
//           )),
//           VerticalDivider(
//             color: Theme.of(context).dividerColor,
//             width: 3,
//             thickness: 3,
//           ),
//           Expanded(child: Padding(
//             padding: const EdgeInsets.all(4.0),
//             child: Text(suraName,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center, ),
//           )),
//
//
//         ],
//       ),
//     );
//   }
// }

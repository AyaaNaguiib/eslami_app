import 'package:eslami_app/core/assets_manager.dart';
import 'package:flutter/material.dart';

import '../../../core/routes_manager.dart';

class SplashScreen extends StatelessWidget {
 // const ({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    },
    );
    return Container(
      child: Image.asset(AssetsManager.LightSplash, fit:BoxFit.fill),
    );

    // return Scaffold(
    //   body: Image.asset(AssetsManager.LightSplash, fit: BoxFit.fill,
    //   width:double.infinity,
    //     height: double.infinity,
    //   ),
    // );
  }
}

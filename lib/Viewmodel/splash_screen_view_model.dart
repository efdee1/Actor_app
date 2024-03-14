import 'dart:async';

import 'package:actor_app/UI/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';

class SplashScreenViewModel extends ViewModel{

  @override
  void init() {
    super.init();
    navigateAfterSplash(context);
  }

   navigateAfterSplash(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BoardingScreen()));
    });
  }

}

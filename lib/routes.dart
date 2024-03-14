import 'package:actor_app/UI/dashboard.dart';
import 'package:flutter/material.dart';

import 'UI/onboarding_screen.dart';
import 'UI/splash_screen.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  BoardingScreen.routeName: (context) => const BoardingScreen(),
  DashBoard.routeName: (context) => const DashBoard(),
  
};
import 'package:actor_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UI/splash_screen.dart';
import 'locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  try {
    await setUpLocator();
    runApp(const MyApp());
  } catch (error) {
    (error);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Actor app',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: routes,
          onUnknownRoute: (settings) {
            return MaterialPageRoute(builder: (ctx) => const SplashScreen());
          }
      );
    }
    );}
}

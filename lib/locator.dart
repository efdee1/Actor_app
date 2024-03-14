import 'package:get_it/get_it.dart';

import 'Service/navigation_service.dart';
import 'Viewmodel/boarding_view_model.dart';
import 'Viewmodel/splash_screen_view_model.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async{
  locator.registerLazySingleton(() => MyNavigationService());
  locator.registerLazySingleton(() => SplashScreenViewModel());
  locator.registerLazySingleton(() => BoardingViewModel());
}
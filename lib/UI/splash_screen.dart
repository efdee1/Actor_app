import 'package:actor_app/UI/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pmvvm/mvvm_builder.widget.dart';
import 'package:pmvvm/views/stateless.view.dart';

import '../Viewmodel/splash_screen_view_model.dart';
import '../locator.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash_screen";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<SplashScreenViewModel>(
      view: () => _SplashScreen(),
      viewModel: locator<SplashScreenViewModel>(),
      disposeVM: false,
    );
  }
}
class _SplashScreen extends StatelessView<SplashScreenViewModel> {
  @override
  Widget render(context, viewModel) {
    SizeConfig().init(context);
    viewModel.navigateAfterSplash(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Union.png',
              color: Colors.white,
              height:76.94.h,
              width: 120.52.w,
            ),
             SizedBox(height: 20.h,),
             Text('NOLLYWOOD ACTOR',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Satoshi',
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
                         )
          ],
        ),
      ),
    );
  }
}

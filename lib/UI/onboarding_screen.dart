import 'package:actor_app/UI/size_config.dart';
import 'package:actor_app/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pmvvm/mvvm_builder.widget.dart';
import 'package:pmvvm/views/stateless.view.dart';
import '../Viewmodel/boarding_view_model.dart';
import '../locator.dart';

class BoardingScreen extends StatelessWidget {
  static String routeName = "/boardingScreen";
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MVVM<BoardingViewModel>(
      view: () => _BoardingScreen(),
      viewModel: locator<BoardingViewModel>(),
      disposeVM: false,
    );
  }
}

class _BoardingScreen extends StatelessView<BoardingViewModel> {
  @override
  Widget render(context, viewModel) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image(
                image: AssetImage(
                  'assets/Union.png',
                ),
                height: 36.h,
                width: 56.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'NOLLYWOOD ACTOR',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Satoshi',
                    fontSize: 7,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(child: Image(image: AssetImage('assets/boardImages.png'))),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'For actors, directors, and everyone in-between',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Satoshi',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'Start exploring',
                      style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontFamily: 'Satoshi',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: MainButton(
                  text: 'Explore as an actor',
                  press: () {
                    viewModel.navigateToActorPage(context);
                  },
                  buttonColor: Colors.black,
                  textColor: Colors.white),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: MainButton(
                  text: 'Explore as a producer',
                  press: () {},
                  buttonColor: Colors.white,
                  textColor: Colors.black),
            ),
            SizedBox(height: 30.h,)
          ],
        ),
      ),
    );
  }
}

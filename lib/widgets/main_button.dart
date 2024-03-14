import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.text,
    this.press,
    required this.buttonColor,
    required this.textColor,
  });

  final String? text;
  final VoidCallback? press;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 56.h,
        width: 327.w,
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(
            color: Colors.black, // Set border color
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
              color: textColor,
              fontFamily: "Satoshi",
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

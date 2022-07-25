import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color darkGray = Color.fromRGBO(100, 100, 100, 1);
  static const Color lightGray = Color.fromRGBO(180, 180, 180, 1);
  static const Color primaryText = Color.fromRGBO(44, 119, 164, 1);
  static const Color yellowText = Color.fromRGBO(255, 176, 56, 1);
  static const Color blueTransparent = Color.fromRGBO(220, 242, 255, 1);
  static const Color blue = Color.fromRGBO(220, 242, 255, 0.53);
  static const Color dim = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color blueTransparentTextField =
      Color.fromRGBO(20, 108, 189, 0.15);
  static const Color blueLightTransparent = Color.fromRGBO(245, 252, 255, 1);
  static const Color darkBlue = Color.fromRGBO(44, 119, 164, 1);
  static const Color mbBlue = Color.fromRGBO(31, 55, 93, 1.0);
  static const Color wideBlue = Color.fromRGBO(72, 86, 154, 1);
  static const Color pinBlue = Color.fromRGBO(44, 119, 164, 1);
  static const Color greenTransparent = Color.fromRGBO(78, 202, 176, 0.16);
  static const Color red = Color.fromRGBO(209, 19, 19, 1);
  static const Color green = Color.fromRGBO(0, 172, 48, 1);
}

class MyFontFamily {
  MyFontFamily._();

  static const String openSans = 'OpenSans';
  static const String mulish = 'Mulish';
}

class MyFontSize {
  MyFontSize._();

  static const double smallest = 9;
  static const double small = 11;
  static const double medium = 13;
  static const double standard = 16;
  static const double big = 18;
  static const double large = 20;
  static const double extraLarge = 24;
  static const double giant = 30;

  static const double titleSize = extraLarge;
  static const double buttonTextSize = extraLarge;
  static const double receiptFontSize = 12.5;
}


class WideButton extends StatelessWidget {
  const WideButton({
    key,
    this.width = 0,
    required this.onPressed,
    required this.title,
    this.secondary = false,
  }) : super(key: key);

  final double width;
  final String title;
  final VoidCallback onPressed;
  final bool secondary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == 0 ? MediaQuery.of(context).size.width : width,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              secondary ? MyColors.white : MyColors.yellowText),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: secondary ? MyColors.darkBlue : MyColors.yellowText,
                width: secondary ? 1.0 : 2.0,
              ),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: secondary ? MyColors.darkBlue : MyColors.white,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

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

class WideTextField extends StatelessWidget {
  const WideTextField({
     key,
    required this.textEditingController,
    required this.focusNode,
    required this.title,
    required this.inputType,
    this.obscureText = false,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final String title;
  final TextInputType inputType;
  final bool obscureText;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: MyColors.primaryText,
              fontFamily: MyFontFamily.openSans,
              fontSize: MyFontSize.small,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            width: 200,
            height: 40,
            decoration: const BoxDecoration(
              color: MyColors.blueTransparentTextField,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: TextField(
              onChanged: onChanged,
              obscureText: obscureText,
              scrollPhysics: const ClampingScrollPhysics(),
              autocorrect: false,
              keyboardType: inputType,
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(
                fontFamily: MyFontFamily.openSans,
                fontSize: MyFontSize.medium,
                color: MyColors.black,
              ),
              controller: textEditingController,
              focusNode: focusNode,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 18, bottom: 18),
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

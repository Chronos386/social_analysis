import 'package:flutter/material.dart';

abstract class Global {
  static const Color red = Color(0xFFB71C1C);
  static const Color blue = Color(0xFF1023E1);
  static const Color gradOne = Color(0xED0AE520);
  static const Color gradTwo = Color(0xFF118837);
  static const Color gradThree = Color(0xFF0A4211);
  static const Color grayInv = Color(0xFFFFFFFF);
  static const Color grayMax = Color(0x86101010);
  static const Color grayLightInv = Color(0xFFFFFFFF);
  static const Color primaryLightTheme = Colors.white70;
  static const Color backgroundLightTheme = Colors.white;
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      gradOne,
      gradTwo,
      gradThree,
    ],
  );
  static const Color myPosColor = Colors.red;
  static const Color textColor = Colors.white;
  static const Color iconsColor = Color(0xFFB6B6C0);
  static const Color appBarTwo = Color(0xFF0D6C15);
  static const Color pickerUnsColor = Color(0x9BDEDEDE);
  static const Color iconBorderColor = Color(0xED56F151);
  static const Color iconAddedColor = Color(0xEDE7C82E);
  static const Color searchCheckColor = Color(0x895CF151);
  static const Color filterCheckColor = Color(0xFF51F154);
  static const Color bottomNavBarColor = Color(0xFF03250E);
  static const Color borderColor = Color(0xFF026516);
  static const Color appBarPhotoColor = Color(0xFF1F1F1F);
  static const Color appHideBarPhotoColor = Color(0x001f1f1f);
  static const Color photoBackgroundColor = Colors.black;
  static const TextTheme darkTextTheme = TextTheme(
      displayLarge: TextStyle(color: Colors.white),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white)
  );
  static const TextStyle textVeryBig = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textHeader = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textRegularNotBold = TextStyle(
    fontSize: 16,
    color: textColor,
  );
  static const TextStyle textSmall = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textChangeFloor =
      TextStyle(fontSize: 15, color: iconsColor);
  static const TextStyle textSmaller = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const TextStyle textSmallerNotBold = TextStyle(
    fontSize: 12,
    color: textColor,
  );
  static const TextStyle textPickerSmaller = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: pickerUnsColor,
  );
  static const TextStyle textSmallest = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: pickerUnsColor,
  );
  static const TextStyle searchText = TextStyle(
    color: searchCheckColor,
    fontStyle: FontStyle.italic,
  );
  static TextStyle getHintStyle(BuildContext context) => TextStyle(
    color: MediaQuery.of(context).platformBrightness == Brightness.dark ?
    grayLightInv : grayInv,
  );
  static Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused
    };
    if (states.any(interactiveStates.contains)) {
      return searchCheckColor;
    }
    return textColor;
  }
  static Color getBorderColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?
    grayLightInv : grayInv;
  }
  static Color getTextColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ?
    primaryLightTheme : grayInv;
  }
  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    color: backgroundLightTheme,
    fontWeight: FontWeight.bold,
  );
}
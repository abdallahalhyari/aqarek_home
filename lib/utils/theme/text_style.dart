

import 'package:flutter/material.dart';

class CustomTextStyle {
//* headline1
  static TextStyle h1(BuildContext context) =>
      Theme.of(context).textTheme.displayLarge ?? const TextStyle();

//* headline2
  static TextStyle h2(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium ?? const TextStyle();

//* headline3
  static TextStyle h3(BuildContext context) =>
      Theme.of(context).textTheme.displaySmall ?? const TextStyle();

//* headline4
  static TextStyle h4(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium ?? const TextStyle();

//* headline5
  static TextStyle h5(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall ?? const TextStyle();

//* headline6
  static TextStyle h6(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge ?? const TextStyle();

//* bodytext1
  static TextStyle b1(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge ?? const TextStyle();

//* bodytext2
  static TextStyle b2(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium ?? const TextStyle();

//* subtitle1
  static TextStyle s1(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium ?? const TextStyle();

  //* subtitle2
  static TextStyle s2(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall ?? const TextStyle();

  //* bodytext1
  static TextStyle btn(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge ?? const TextStyle();

  // * check isDark
  // static bool isDrak(BuildContext context) =>
  //     Theme.of(context).brightness == Brightness.dark;
  // * current theme Text
  // static String themeState(BuildContext context) =>
  //     isDrak(context) ? KeyLang.dark : KeyLang.light;
}

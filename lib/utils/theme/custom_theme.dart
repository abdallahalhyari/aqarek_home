import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'text_style.dart';

class CustomTheme {
  static const String enFont = 'YsabeauInfant-VariableFont_wght';
  static const String arFont = 'YsabeauInfant-VariableFont_wght';

//!------------------------------------------------< Light >-----------------------------------------------
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
        primaryColor: AppColors.primary,
        secondaryHeaderColor: AppColors.secondary,
        useMaterial3: true,
        colorScheme: ThemeData().colorScheme.copyWith(
            primary: AppColors.primary, secondary: AppColors.secondary),
        dividerTheme: DividerThemeData(color: Colors.grey.shade400),
        shadowColor: Colors.grey,
        primaryTextTheme: Theme.of(context).textTheme.apply(),
//*---------------------------------------------< Icon Theme >--------------------------------------------
        iconTheme: IconThemeData(color: AppColors.secondary),
//*--------------------------------------< Input Decoration Theme >---------------------------------------
        inputDecorationTheme: InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.secondary)),
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.secondary.withOpacity(.2)))),
//*----------------------------------------< Bottom Sheet Theme >-----------------------------------------
        bottomSheetTheme: const BottomSheetThemeData(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
            modalBackgroundColor: Colors.white),
//*-------------------------------------------< Tab Bar Theme >-------------------------------------------
        tabBarTheme: TabBarTheme(
            indicatorColor: AppColors.secondary,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            unselectedLabelColor: Colors.grey),
//*----------------------------------------< Expansion Tile Theme >---------------------------------------
        expansionTileTheme: ExpansionTileThemeData(
            collapsedIconColor: AppColors.secondary,
            iconColor: AppColors.primary,
            collapsedShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
//*--------------------------------------------< App Bar Theme >------------------------------------------
        appBarTheme: AppBarTheme(
            toolbarHeight: 60,
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            titleTextStyle: CustomTextStyle.h6(context)
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
//*---------------------------------------------< Card Theme >--------------------------------------------
        cardTheme: const CardTheme().copyWith(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            margin: const EdgeInsets.all(0),
            surfaceTintColor: Colors.white,
            color: AppColors.backgroundColor),
//*---------------------------------------------< Text Theme >--------------------------------------------
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColors.bblack, displayColor: AppColors.secondary2),
//*---------------------------------------------< Radio Theme >-------------------------------------------
        radioTheme: RadioThemeData(
            fillColor: MaterialStateColor.resolveWith(
                (states) => AppColors.secondary)));
  }
}

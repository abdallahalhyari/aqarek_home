import 'package:flutter/material.dart';

class AppColors {
  static Color colorFromHex(String hexColor, [String opcity = 'FF']) {
    final String color = hexColor.replaceAll('#', '');
    return Color(int.parse(opcity + color, radix: 16));
  }

  static final Color primary = colorFromHex('#008FC7');
  static final Color secondary = colorFromHex('#FB9436');
  static final Color secondary1 = colorFromHex('#FB9335');
  static final Color secondary2 = colorFromHex('#7b4831');
  static final Color blueAccent = colorFromHex('#0099DB');
  static final Color red = colorFromHex('#E15D29');
  static final Color redDark = colorFromHex('#E67D53');
  static final Color green = colorFromHex('#73C099');
  static final Color blueDark = colorFromHex('#0086A5');
  static final Color orangeAccent = colorFromHex('#F67F46');
  static final Color orange = colorFromHex('#FB9335');
  static final Color white = colorFromHex('#FFFFFF');
  static final Color grey1 = colorFromHex('#F9F9F9');
  static final Color grey2 = colorFromHex('#F4F4F4');
  static final Color grey3 = colorFromHex('#EFEFEF');
  static final Color grey4 = colorFromHex('#EBEBEB');
  static final Color backGroundColors = colorFromHex('#303030');
  static final Color bottomNav = colorFromHex('#484D4D');
  static final Color bottomNavLigt = colorFromHex('#F0F7FC');

  static final Color ashen = colorFromHex('##BABABA');
  static final Color blue = colorFromHex('#2196F3');
  static final Color backgroundColor = colorFromHex('#f0f7fc');

  //-------------------------------------------------------------------
  static final Color bgBlack = colorFromHex('#000000');
  static final Color bblack = colorFromHex('#353535');

//!-----------------------------------------------------< Status Colors >---------------------------------------------
  static invoicesColors(String status) {
    Color itemColor = AppColors.secondary;
    switch (status) {
      case 'Paid':
        itemColor = AppColors.green;
        break;
      case 'Not Paid':
        itemColor = AppColors.red;
        break;
      case 'Zero Amount':
        itemColor = AppColors.blueDark;
        break;
      case 'Partially Paid':
        itemColor = AppColors.orange;
        break;
    }
    return itemColor;
  }
}

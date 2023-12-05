import 'package:flutter/material.dart';
import 'utils/theme/app_colors.dart';
import 'utils/theme/custom_theme.dart';
import 'widget/custom_error_widget.dart';

GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

class AqarkApp extends StatelessWidget {
  const AqarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      builder: (context, widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return ErrorWidgetCustom(errorDetails); // Your custom error widget
        };
        return widget!;
      },
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme(context),
      color: AppColors.primary,
      title: 'Aqark',
    );
  }
}

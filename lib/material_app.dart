import 'package:aqarek_home/module/home_page/ui/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'module/home_page/bloc/home_page_bloc.dart';
import 'utils/theme/app_colors.dart';
import 'utils/theme/custom_theme.dart';
import 'widget/custom_error_widget.dart';

GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

class AqarkApp extends StatelessWidget {
  const AqarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: BlocProvider<HomePageBloc>(
    create: (context) {
    return HomePageBloc();
    },
    child:HomePageView()),
      title: 'Aqark',
    );
  }
}

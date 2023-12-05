import 'package:aqarek_home/material_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const bool clientDB = false;

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    const AqarkApp(),
  );
}

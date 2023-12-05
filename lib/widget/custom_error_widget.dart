import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/theme/app_colors.dart';

class ErrorWidgetCustom extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  const ErrorWidgetCustom(this.errorDetails, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
              Lottie.asset('assets/lottie/error.json'),
              const SizedBox(height: 10.0),
              const Text('Error Occurred!',
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10.0),
              Text(errorDetails.exceptionAsString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0))
            ]))));
  }
}

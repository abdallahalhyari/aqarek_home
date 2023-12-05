import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorWidgetCustom extends StatelessWidget {
  final String errorDetails;
  const ErrorWidgetCustom(this.errorDetails, {super.key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Material(
            color: Colors.black.withOpacity(.8),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Lottie.asset('assets/lottie/error_internet.json'),
                  const SizedBox(height: 10.0),
                  TextViewCustom(
                      text: errorDetails,
                      textAlign: TextAlign.center,
                      color: Colors.white,
                      size: 18,
                      maxLine: 3)
                ]))));
  }
}

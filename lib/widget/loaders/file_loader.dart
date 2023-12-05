import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FileLoaderWidget extends StatelessWidget {
  const FileLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.black.withOpacity(.8),
        child: Lottie.asset('assets/lottie/files.json'));
  }
}

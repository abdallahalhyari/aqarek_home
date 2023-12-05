import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'text/custom_text_view.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height / 3,
              child: Lottie.asset("assets/lottie/empty.json")),
          const TextViewCustom(
              text: "NODATAFOUND",
              color: Colors.red,
              size: 18,
              fontWeight: FontWeight.bold)
        ]));
  }
}

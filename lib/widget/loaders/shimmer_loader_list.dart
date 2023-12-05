import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/theme/app_colors.dart';

class LoadingListPage extends StatelessWidget {
  final double? height;
  const LoadingListPage({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
                Expanded(
                    child: Shimmer.fromColors(
                        highlightColor: AppColors.white,
                        period: const Duration(milliseconds: 1600),
                        baseColor: Colors.grey.withOpacity(.05),
                        enabled: true,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (_, __) => Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                            Container(
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15)),
                                                    color: Colors.white),
                                                width: double.infinity,
                                                height: height ?? 68.0)
                                          ]))
                                    ])),
                            itemCount: 10)))
              ]))
        ]));
  }
}

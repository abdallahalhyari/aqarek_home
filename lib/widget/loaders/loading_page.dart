import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/theme/app_colors.dart';
import '../animation/box_fade.dart';
import '../text/custom_text_view.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
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
                      child: SizedBox(
                          height: MediaQuery.sizeOf(context).height,
                          child: ListView(
                              physics: const BouncingScrollPhysics(),
                              padding: const EdgeInsets.all(20),
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
//*---------------------------------------< User info >---------------------------------------
                                      Expanded(
                                          child: Container(
                                              height: 180,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(9))),
                                              child: const Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 15),
                                                    CircleAvatar(
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        radius: 40,
                                                        backgroundImage:
                                                            NetworkImage(
                                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjQ2fp0WzFCth6jOF6ZwKumLHc4qSTpWFEKQ&usqp=CAU')),
                                                    SizedBox(height: 10),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: []),
                                                    Spacer(),
                                                    SizedBox(
                                                        width: 100,
                                                        child: Row(children: [
                                                          Expanded(
                                                              child: Icon(
                                                                  Icons.person,
                                                                  size: 15)),
                                                          Expanded(
                                                              flex: 4,
                                                              child: Row(
                                                                  children: []))
                                                        ])),
                                                    SizedBox(height: 6),
                                                    SizedBox(
                                                        width: 100,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                  child: Icon(
                                                                      FontAwesomeIcons
                                                                          .mobileScreen,
                                                                      size:
                                                                          13)),
                                                              Expanded(
                                                                  flex: 4,
                                                                  child:
                                                                      SizedBox())
                                                            ])),
                                                    SizedBox(height: 15)
                                                  ]))),
                                      const SizedBox(width: 10),
//*----------------------------------------< Qr code >----------------------------------------
                                      Expanded(
                                          child: Container(
                                              height: 180,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(9))),
                                              child: const Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 15),
                                                    Spacer(),
                                                    Row(children: [
                                                      SizedBox(width: 10),
                                                      Expanded(
                                                          child: SizedBox())
                                                    ]),
                                                    SizedBox(height: 6),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(width: 10),
                                                          Expanded(
                                                              child: SizedBox())
                                                        ]),
                                                    SizedBox(height: 15)
                                                  ])))
                                    ]),
                                const SizedBox(height: 15),
//*------------------------------------< Chronic Records >------------------------------------
                                const ExpansionTile(
                                    collapsedBackgroundColor: Colors.black,
                                    leading: Icon(FontAwesomeIcons.addressBook,
                                        size: 20),
                                    title: TextViewCustom(
                                        text: '',
                                        size: 15,
                                        fontWeight: FontWeight.w500),
                                    children: [SizedBox(height: 10)]),
                                const SizedBox(height: 15),
//*---------------------------------------< Allergies >---------------------------------------
                                const ExpansionTile(
                                    collapsedBackgroundColor: Colors.black,
                                    leading: Icon(FontAwesomeIcons.handDots,
                                        size: 20),
                                    title: TextViewCustom(
                                        text: 'Allergies',
                                        size: 15,
                                        fontWeight: FontWeight.w500),
                                    children: [
                                      SizedBox(),
                                      SizedBox(height: 15),
                                    ]),
                                const SizedBox(height: 15),
//*---------------------------------------< Medications >-------------------------------------
                                const ExpansionTile(
                                    collapsedBackgroundColor: Colors.black,
                                    leading: Icon(FontAwesomeIcons.pumpMedical,
                                        size: 20),
                                    title: TextViewCustom(
                                        text: 'Medications',
                                        size: 15,
                                        fontWeight: FontWeight.w500),
                                    children: [SizedBox(height: 15)]),
                                const SizedBox(height: 15),
//*--------------------------------------< List of Pages >------------------------------------
                                GridView.builder(
                                    itemCount: 8,
                                    shrinkWrap: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 2.8,
                                            mainAxisSpacing: 12,
                                            crossAxisSpacing: 10),
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Container(
                                          padding: const EdgeInsets.all(6),
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          child: BoxCustomFade(
                                              widget: Row(children: [
                                            Container(
                                                height: 20,
                                                padding: const EdgeInsets.only(
                                                    left: 4, right: 7)),
                                            const Expanded(
                                                child: TextViewCustom(text: ''))
                                          ])));
                                    })
                              ]))))
            ])));
  }
}

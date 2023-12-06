import 'package:aqarek_home/model/home_page_model.dart';
import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidgetsWidget extends StatelessWidget {
  const HeaderWidgetsWidget({super.key, required this.headerWidgets});
  final List<HeaderWidgets> headerWidgets;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: headerWidgets.length,
            itemBuilder: (context, index) => Row(children: [
                  Column(children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(20, 76, 237, 1.0)),
                        margin: const EdgeInsets.all(15),
                        height: 70,
                        width: 70,
                        child: SvgPicture.network(
                            headerWidgets[index].imageurl ?? '')),
                    TextViewCustom(text: headerWidgets[index].title.toString())
                  ]),
                  Column(children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(20, 76, 237, 1.0)),
                        margin: const EdgeInsets.all(15),
                        height: 70,
                        width: 70,
                        child: SvgPicture.network(
                            headerWidgets[index].imageurl ?? '')),
                    TextViewCustom(text: headerWidgets[index].title.toString())
                  ])
                ])));
  }
}

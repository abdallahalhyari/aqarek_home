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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: headerWidgets.length,
                itemBuilder: (context, index) => Row(children: [
                      const SizedBox(width: 10),
                      Container(
                          width: 120,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(240, 240, 240, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                        const Color.fromRGBO(20, 76, 237, 1.0)),
                                margin: const EdgeInsets.all(15),
                                height: 70,
                                width: 70,
                                child: SvgPicture.network(
                                    headerWidgets[index].imageurl ?? '')),
                            TextViewCustom(
                                size: 12,
                                text: headerWidgets[index].title.toString())
                          ])),
                      const SizedBox(width: 30),
                    ])),
          ),
        ));
  }
}

import 'package:aqarek_home/model/home_page_model.dart';
import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:flutter/material.dart';

class LastSeenWidget extends StatelessWidget {
  const LastSeenWidget({super.key, required this.lastseen});

  final List<Layouts> lastseen;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: TextViewCustom(
                text: 'وحدات عقارية مقترحة',
                size: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(20, 76, 237, 1.0))),
        SizedBox(
            height: 100,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: lastseen.length,
                  itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(lastseen[index].image ?? ''),
                              fit: BoxFit.fill),
                          color: const Color.fromRGBO(20, 76, 237, 1.0),
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.all(15),
                      height: 190,
                      width: MediaQuery.sizeOf(context).width / 1.3)),
            )),
      ],
    );

    //  ListView(
    //     physics: const BouncingScrollPhysics(),
    //     scrollDirection: Axis.horizontal,
    //     children: [
    //       Container(
    //           decoration: BoxDecoration(
    //               color: const Color.fromRGBO(240, 240, 240, 1.0),
    //               borderRadius: BorderRadius.circular(15)),
    //           margin: const EdgeInsets.all(15),
    //           height: 100,
    //           width: 70),
    //       Container(
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(15),
    //               color: const Color.fromRGBO(20, 76, 237, 1.0)),
    //           margin: const EdgeInsets.all(15),
    //           height: 100,
    //           width: 70),
    //       Container(
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(15),
    //               color: const Color.fromRGBO(20, 76, 237, 1.0)),
    //           margin: const EdgeInsets.all(15),
    //           height: 100,
    //           width: 70),
    //       Container(
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(15),
    //               color: const Color.fromRGBO(20, 76, 237, 1.0)),
    //           margin: const EdgeInsets.all(15),
    //           height: 100,
    //           width: 70),
    //       Container(
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(15),
    //               color: const Color.fromRGBO(20, 76, 237, 1.0)),
    //           margin: const EdgeInsets.all(15),
    //           height: 100,
    //           width: 70),
    //       Container(
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(15),
    //               color: const Color.fromRGBO(20, 76, 237, 1.0)),
    //           margin: const EdgeInsets.all(15),
    //           height: 100,
    //           width: 70)
    //     ]));
  }
}

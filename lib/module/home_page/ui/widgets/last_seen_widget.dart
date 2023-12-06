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
        SizedBox(height: 15),
        const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.arrow_drop_down,size: 40,),
                TextViewCustom(
                    text: 'وحدات عقارية مقترحة',
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(20, 76, 237, 1.0)),
              ],
            )),
        SizedBox(
            height: 70,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: lastseen.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(lastseen[index].companylogo ?? ''),
                                      fit: BoxFit.fill),
                                  color: const Color.fromRGBO(20, 76, 237, 1.0),
                                  borderRadius: BorderRadius.circular(15)),
                              height: 40,
                              width: 40),
                          SizedBox(width: 4),
                          Container(height: 30,width: 2,color: Colors.blue,),
                          SizedBox(width: 7,),
                          TextViewCustom(text:lastseen[index].companyname)
                        ],
                      ),
                    ),
                  )),
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

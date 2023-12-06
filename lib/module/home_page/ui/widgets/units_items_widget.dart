import 'package:aqarek_home/model/home_page_model.dart';
import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UnitsItemsWidget extends StatelessWidget {
  const UnitsItemsWidget({super.key, required this.item});
  final List<UnitsItems> item;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(height: 40),
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
          Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: item.length,
                  itemBuilder: (context, index) => Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(item[index].photourl ?? ''),
                                  fit: BoxFit.fill),
                              color: const Color.fromRGBO(20, 76, 237, 1.0),
                              borderRadius: BorderRadius.circular(15)),
                          margin: const EdgeInsets.all(15),
                          height: 190,
                          width: MediaQuery.sizeOf(context).width / 1.3),
                      Positioned(bottom: 1,child: Container(padding: EdgeInsets.all(10),child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              TextViewCustom(text: item[index].pricetext,color:const Color.fromRGBO(20, 76, 237, 1.0)),
                              Spacer(),
                              TextViewCustom(text: item[index].title,fontWeight: FontWeight.bold,size: 14),
                            ],
                          ),
                          SizedBox(height: 6),
                          TextViewCustom(text: item[index].screenname)
                        ],
                      ) ,height: 70,width: MediaQuery.sizeOf(context).width / 1.3,decoration: BoxDecoration(border:Border.all(color: Colors.grey.shade400),color: Colors.white, borderRadius: const BorderRadius.vertical(bottom:  Radius.circular(15)),),))
                    ],
                  )))
        ]));
  }
}

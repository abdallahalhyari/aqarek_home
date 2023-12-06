import 'package:aqarek_home/model/home_page_model.dart';
import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LatestprojectWidget extends StatelessWidget {
  const LatestprojectWidget({super.key, required this.latestProjectsItems});
  final List<LatestProjectsItems>? latestProjectsItems;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_drop_down,size: 40,),
                  TextViewCustom(
                      text: 'أحدث مشاريع عقارك',
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(20, 76, 237, 1.0)),

                ],
              )),
          Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: latestProjectsItems?.length,
                  itemBuilder: (context, index) => Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(20, 76, 237, 1.0),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      latestProjectsItems?[index].image ?? ''),
                                  fit: BoxFit.fill)),
                          margin: const EdgeInsets.all(15),
                          height: 270,
                          width: 150
                          // child: Image.network(homePageBloc.homePageModel!.latestProjects!.items![index].image??'',fit: BoxFit.fill),
                          ),
                        Positioned(bottom: 1,child: Container(child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextViewCustom(text: latestProjectsItems?[index].title,fontWeight: FontWeight.bold,size: 14),
                            SizedBox(height: 6),
                            TextViewCustom(text: latestProjectsItems?[index].cityname)
                          ],
                        ) ,height: 70,width: 150,decoration: BoxDecoration(border:Border.all(color: Colors.grey.shade400),color: Colors.white, borderRadius: const BorderRadius.vertical(bottom:  Radius.circular(15)),),))
                    ],
                  )))
        ]));
  }
}

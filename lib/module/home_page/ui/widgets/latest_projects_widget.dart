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
              child: TextViewCustom(
                  text: 'أحدث مشاريع عقارك',
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(20, 76, 237, 1.0))),
          Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: latestProjectsItems?.length,
                  // homePageBloc.homePageModel!.latestProjects!.items!.length,
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
                        Positioned(bottom: 1,child: Container(height: 70,width: 150,decoration: BoxDecoration(border:Border.all(color: Colors.grey.shade400),color: Colors.white, borderRadius: BorderRadius.vertical(bottom:  Radius.circular(15)),),))
                    ],
                  )))
        ]));
  }
}

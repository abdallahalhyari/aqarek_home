import 'package:aqarek_home/model/home_page_model.dart';
import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:flutter/widgets.dart';

class UnitsItemsWidget extends StatelessWidget {
  const UnitsItemsWidget({super.key, required this.item});
  final List<UnitsItems> item;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: TextViewCustom(
                  text: 'وحدات عقارية مقترحة',
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(20, 76, 237, 1.0))),
          Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: item.length,
                  itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(item[index].photourl ?? ''),
                              fit: BoxFit.fill),
                          color: const Color.fromRGBO(20, 76, 237, 1.0),
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.all(15),
                      height: 190,
                      width: MediaQuery.sizeOf(context).width / 1.3)))
        ]));
  }
}

import 'package:aqarek_home/model/home_page_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OffersWidget extends StatefulWidget {
   OffersWidget({super.key, required this.headerOffers});

  final List<HeaderOffers> headerOffers;

  @override
  State<OffersWidget> createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          padding: const EdgeInsets.all(10),
          child: CarouselSlider(
              items: widget.headerOffers
                  .map((e) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(e.image ?? ''),
                              fit: BoxFit.fill)),
                      width: MediaQuery.sizeOf(context).width))
                  .toList(),
              options: CarouselOptions(
                onPageChanged: (i, c){
                  index=i;
                  setState(() {

                  });
                },
                  height: double.infinity,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  aspectRatio: 1)),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          height: 35,
          child: ListView.builder(shrinkWrap: true,scrollDirection: Axis.horizontal,itemCount: widget.headerOffers.length,itemBuilder:(context,i)=>
          Container(padding:index==i? const EdgeInsets.symmetric(horizontal: 10):const EdgeInsets.all(3),margin: EdgeInsets.all(5),decoration: BoxDecoration(color:index==i?const Color.fromRGBO(20, 76, 237, 1.0):Colors.grey.shade500,shape:index==i?BoxShape.rectangle:BoxShape.circle),)
          ),
        )
      ],
    );
  }
}

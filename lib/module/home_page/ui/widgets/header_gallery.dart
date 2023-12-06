import 'package:aqarek_home/model/home_page_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderGalleryWidget extends StatefulWidget {
  const HeaderGalleryWidget({super.key, required this.headerGallery});
  final List<HeaderGallery> headerGallery;

  @override
  State<HeaderGalleryWidget> createState() => _HeaderGalleryWidgetState();
}

class _HeaderGalleryWidgetState extends State<HeaderGalleryWidget> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(5)),
            height: MediaQuery.sizeOf(context).height / 2,
            padding: const EdgeInsets.only(bottom: 20),
            child: CarouselSlider(
                items: widget.headerGallery
                    .map((e) => SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Image.network(
                          e.image ?? '',
                          fit: BoxFit.fill,
                        )))
                    .toList(),
                options: CarouselOptions(
                  onPageChanged: (i,c){
                    index=i;
                    setState(() {

                    });
                  },
                    autoPlay: true,
                    height: double.infinity,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    aspectRatio: 1
                    // initialPage: 2,
                    ))),
        Positioned(
          bottom: 20,

          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            height: 35,
            child: ListView.builder(shrinkWrap: true,scrollDirection: Axis.horizontal,itemCount: widget.headerGallery.length,itemBuilder:(context,i)=>
                Container(padding:index==i? const EdgeInsets.symmetric(horizontal: 10):const EdgeInsets.all(3),margin:const EdgeInsets.all(5),decoration: BoxDecoration(color:index==i?Colors.white:Colors.grey.shade300,shape:index==i?BoxShape.rectangle:BoxShape.circle),)
            ),
          ),
        ),
      ],
    );
  }
}

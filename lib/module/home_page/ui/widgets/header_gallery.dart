import 'package:aqarek_home/model/home_page_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderGalleryWidget extends StatelessWidget {
  const HeaderGalleryWidget({super.key, required this.headerGallery});
  final List<HeaderGallery> headerGallery;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.sizeOf(context).height / 2.4,
        color: const Color.fromRGBO(20, 76, 237, 1.0),
        padding: const EdgeInsets.only(bottom: 20),
        child: CarouselSlider(
            items: headerGallery
                .map((e) => SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Image.network(
                      e.image ?? '',
                      fit: BoxFit.fill,
                    )))
                .toList(),
            options: CarouselOptions(
                autoPlay: true,
                height: double.infinity,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 1
                // initialPage: 2,
                )));
  }
}

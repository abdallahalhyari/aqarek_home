import 'package:aqarek_home/model/home_page_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key, required this.headerOffers});

  final List<HeaderOffers> headerOffers;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: CarouselSlider(
            items: headerOffers
                .map((e) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(e.image ?? ''),
                            fit: BoxFit.fill)),
                    width: MediaQuery.sizeOf(context).width))
                .toList(),
            options: CarouselOptions(
                height: double.infinity,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 1)));
  }
}

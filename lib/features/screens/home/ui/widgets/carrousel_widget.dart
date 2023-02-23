import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proyect/features/screens/home/ui/widgets/banner_widget.dart';

class CarrouselWidget extends StatelessWidget {
  const CarrouselWidget({
    Key? key,
    required this.height,
    required this.viewportFraction,
    required this.banners,
  }) : super(key: key);
  final double height;
  final double viewportFraction;
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: height,
          viewportFraction: viewportFraction,
          enableInfiniteScroll: false,
        ),
        items: [
          for (String banner in banners) BannerWidget(url: banner),
        ]);
  }
}

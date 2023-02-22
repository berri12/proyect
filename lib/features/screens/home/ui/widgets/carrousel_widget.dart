import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:proyect/features/screens/home/ui/widgets/banner_widget.dart';

class CarrouselWidget extends StatelessWidget {
  CarrouselWidget({
    Key? key,
    required this.height,
    required this.viewportFraction,
  }) : super(key: key);
  final double height;
  final double viewportFraction;
  final List<String> banners = [
    'https://www.infobae.com/new-resizer/ctwA8VXtDcgGTjlTsg8qbq2uWtU=/768x432/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/NYUYHEKP6NBD7LRUHBNOXWCQRA.jpg',
    'https://www.infobae.com/new-resizer/ctwA8VXtDcgGTjlTsg8qbq2uWtU=/768x432/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/NYUYHEKP6NBD7LRUHBNOXWCQRA.jpg',
  ];

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

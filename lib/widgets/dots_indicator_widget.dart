import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class DotsIndicatorWidget extends StatelessWidget {
  final List<String> carouselImages;
  final int currentIndex;
  final CarouselController carouselController;

  const DotsIndicatorWidget({
    super.key,
    required this.carouselImages,
    required this.currentIndex,
    required this.carouselController,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: carouselImages.length,
      position: currentIndex,
      decorator: const DotsDecorator(
        activeColor: Colors.white,
        size: Size(15, 15),
        activeSize: Size(25, 25),
        spacing: EdgeInsets.all(10),
      ),
      onTap: (index) {
        carouselController.animateToPage(index);
      },
    );
  }
}

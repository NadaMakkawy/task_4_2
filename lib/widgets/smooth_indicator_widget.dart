import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicatorWidget extends StatelessWidget {
  final int currentIndex;
  final List<String> carouselImages;
  final CarouselController carouselController;

  const SmoothIndicatorWidget({
    super.key,
    required this.currentIndex,
    required this.carouselImages,
    required this.carouselController,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: carouselImages.length,
      effect: const ExpandingDotsEffect(
        activeDotColor: Colors.white,
        dotHeight: 20,
        dotWidth: 20,
        expansionFactor: 2.0,
      ),
      onDotClicked: (index) {
        carouselController.animateToPage(index);
      },
    );
  }
}

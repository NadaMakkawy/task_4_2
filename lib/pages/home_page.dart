import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/dots_indicator_widget.dart';
// import '../widgets/smooth_indicator_widget.dart'; // uncomment to use the other approach

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  final List<String> _carouselImages = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Carousel Slider',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: _carouselImages.length,
              carouselController: _carouselController,
              itemBuilder: (context, index, realIdx) {
                return Image.asset(_carouselImages[index], fit: BoxFit.cover);
              },
              options: CarouselOptions(
                height: 400,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _currentIndex = index;
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // //
            // // another approach
            // //
            // SmoothIndicatorWidget(
            //     currentIndex: _currentIndex,
            //     carouselImages: _carouselImages,
            //     carouselController: _carouselController),
            DotsIndicatorWidget(
                carouselImages: _carouselImages,
                currentIndex: _currentIndex,
                carouselController: _carouselController),
          ],
        ),
      ),
    );
  }
}

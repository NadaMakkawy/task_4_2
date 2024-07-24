import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const CarouselSliderApp());
}

class CarouselSliderApp extends StatelessWidget {
  const CarouselSliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: const HomePage(),
    );
  }
}

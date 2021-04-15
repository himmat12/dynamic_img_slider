import 'package:dynamic_img_slider/dynamic_img_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DynamicImgSlider(),
    );
  }
}

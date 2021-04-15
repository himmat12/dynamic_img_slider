import 'package:carousel_pro/carousel_pro.dart';
import 'package:dynamic_img_slider/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DynamicImgSlider extends StatelessWidget {
  final ImgController controller = Get.put(ImgController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic Img Slider")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addImage(
              url: "https://slidervilla.com/smooth-slider/files/2014/05/6.jpg");
        },
        child: Icon(Icons.add_a_photo_outlined),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              child: Obx(() => Carousel(
                    images:
                        controller.images.map((e) => Image.network(e)).toList(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

// /
// get - state mgmt
// carousel_pro - image slider
// 

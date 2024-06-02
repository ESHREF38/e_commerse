import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  List<String> images = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider.sliderType1(
                  sliderHeight: 400,
                  imagesLink: images,
                  isAssets: true,
                  autoPlay: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Warm Zipper",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hooded Jacket ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                     
                    ],
                  ),
                   Text(
                        "\$300.00 ",
                        style: TextStyle(
                          color: Color(0xFFDB3022,),
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

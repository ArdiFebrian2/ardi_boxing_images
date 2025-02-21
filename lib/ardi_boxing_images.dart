library ardi_boxing_images;

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as slider;

class ArdiBoxingImages extends StatefulWidget {
  const ArdiBoxingImages({super.key});

  @override
  State<ArdiBoxingImages> createState() => _ArdiBoxingImagesState();
}

class _ArdiBoxingImagesState extends State<ArdiBoxingImages> {
  List<String> imgUrls = [
    "https://images.unsplash.com/photo-1552072092-7f9b8d63efcb",
    "https://images.unsplash.com/flagged/photo-1574005280900-3ff489fa1f70",
    "https://images.unsplash.com/photo-1591117207239-788bf8de6c3b",
    "https://images.unsplash.com/photo-1606335543042-57c525922933",
    "https://images.unsplash.com/photo-1618517048289-4646902edaf5",
    "https://images.unsplash.com/photo-1555661530-68c8e98db4e6",
    "https://images.unsplash.com/photo-1525680996651-0222228be6f0",
    "https://images.unsplash.com/photo-1631132329534-0e7e1b94d494",
    "https://images.unsplash.com/photo-1601588462477-e76b16de79f3",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: slider.CarouselSlider.builder(
        itemCount: imgUrls.length,
        itemBuilder: (context, index, pageViewIndex) {
          return Image.network(
            imgUrls[index],
            fit: BoxFit.cover,
            width: double.infinity,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Center(
                  child: Icon(Icons.error, size: 50, color: Colors.red));
            },
          );
        },
        options: slider.CarouselOptions(
          autoPlay: true,
          height: 300,
        ),
      ),
    );
  }
}

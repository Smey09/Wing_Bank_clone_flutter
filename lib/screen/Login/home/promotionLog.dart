import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:wink_bank_clone/models/data/promotion.dart';

// ignore: must_be_immutable
class PromotionLog extends StatelessWidget {
  const PromotionLog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ImageSlideshow(
        width: double.infinity,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {
          // print('Page changed: $value');
        },
        autoPlayInterval: 5000,
        isLoop: true,
        children: promotions.map((promotion) {
          return GestureDetector(
            onTap: () {
              print(promotion['onPress']);
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    promotion['image']!,
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

List<Map<String, String>> posterWingMarket = [
  {
    "image": "assets/poster/wingMarket/poster-1.png",
    "onPress": "Promotion ...."
  },
  {
    "image": "assets/poster/wingMarket/poster-2.png",
    "onPress": "Promotion ...."
  },
  {
    "image": "assets/poster/wingMarket/poster-3.png",
    "onPress": "Promotion ...."
  },
];

class WingMarket extends StatelessWidget {
  const WingMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  child: ImageSlideshow(
                    width: double.infinity,
                    initialPage: 0,
                    indicatorColor: Colors.red,
                    indicatorBackgroundColor: Colors.grey,
                    onPageChanged: (value) {
                      print('Page changed: $value');
                    },
                    autoPlayInterval: 2000,
                    isLoop: true,
                    children: posterWingMarket.map((promotion) {
                      return GestureDetector(
                        onTap: () {
                          print(promotion['onPress']);
                        },
                        child: ClipRRect(
                          child: Image.asset(
                            promotion['image']!,
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "WELCOME",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text(
                          "The Platform acts as a single digital hub to provide a seamless purchase and selling experience using proprietary technologies, innovative supply chain management, and advanced and secured financial solutions to empower you and your business partners!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Become Seller!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 35,
            left: 15.0,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.asset(
                    "assets/icons/x-icon.png",
                    color: Colors.white,
                    height: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

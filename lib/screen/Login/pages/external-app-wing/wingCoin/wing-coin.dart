import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Login/pages/external-app-wing/wingCoin/wingCoinCard.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class WingCoin extends StatelessWidget {
  const WingCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor2,
      body: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            children: [
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 80),
              Image.asset(
                "assets/icons/typeOfWink/wing_coin-removebg-preview.png",
                height: 50,
                width: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 5, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pay & Earn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Get Instant Wingpoints Enjoy with redemptions!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "assets/icons/typeOfWink/wing_coin-icon.png",
                  height: 120,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Container(
              width: double.infinity,
              color: BackgroundColor.colorWhite_2,
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        const WingCoinCard(
                          iconPath: "assets/icons/wingCoin/icon-1.png",
                          title: "How to earn Wingpoints",
                          subtitle: "Scan Wing QR with Wing Bank app",
                        ),
                        const WingCoinCard(
                          iconPath: "assets/icons/wingCoin/Gift-8.png",
                          title: "How to redeem Wingpoints",
                          subtitle: "Pay with Wingpoints at our merchants",
                        ),
                        const WingCoinCard(
                          iconPath: "assets/icons/wingCoin/treasure-chest.png",
                          title: "Check Your Prizes",
                          subtitle: "Prizes get from Treasure Hunt",
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          width: 600,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/icons/wingCoin/Question_mark.png",
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Learn More",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.blue,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 55),
                  Image.asset("assets/icons/wingCoin/poster.png")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

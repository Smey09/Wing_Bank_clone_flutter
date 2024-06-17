import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wink_bank_clone/models/data/cartItem-login.dart';
import 'package:wink_bank_clone/models/lists/list-item-login.dart';
import 'package:wink_bank_clone/screen/Login/auth/PIN.dart';
import 'package:wink_bank_clone/screen/Login/home/CardCustom.dart';
import 'package:wink_bank_clone/screen/Login/home/drawer-page.dart';
import 'package:wink_bank_clone/screen/Login/home/myQRcode.dart';
import 'package:wink_bank_clone/screen/Login/home/promotionLog.dart';
import 'package:wink_bank_clone/screen/Login/pages/Notification/notification.dart';
import 'package:wink_bank_clone/screen/Login/pages/external-app-wing/wingAgri/wing-agri.dart';
import 'package:wink_bank_clone/screen/Login/pages/external-app-wing/wingCoin/wing-coin.dart';
import 'package:wink_bank_clone/screen/Login/pages/external-app-wing/wingMarket/wing-Market.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class HomeBodyLogin extends StatefulWidget {
  const HomeBodyLogin({super.key});

  @override
  State<HomeBodyLogin> createState() => _HomeBodyLoginState();
}

class _HomeBodyLoginState extends State<HomeBodyLogin> {
  Future<void> launchAppWingMall() async {
    String url;
    if (Platform.isAndroid) {
      url =
          'https://play.google.com/store/apps/details?id=com.winginterlts.wingmall.prod';
    } else if (Platform.isIOS) {
      // url = 'https://google.com/';
      url = "https://apps.apple.com/us/app/wingmall/id1635320449";
    } else {
      return;
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchAppWingExpress() async {
    String url;
    if (Platform.isAndroid) {
      url =
          'https://play.google.com/store/apps/details?id=com.winginterlts.wingmall.prod';
    } else if (Platform.isIOS) {
      // url = 'https://google.com/';
      url = "https://apps.apple.com/kh/app/wingdelivery/id1527690405";
    } else {
      return;
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _showPINScreen(BuildContext context, Widget route) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PIN(route: route),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BackgroundColor.bgColor,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(
              'assets/icons/menu-icons.png',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Image.asset(
          "assets/icons/wing-logo-white.png",
          height: 55,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                ),
              );
            },
            icon: Icon(
              Icons.notifications,
              color: IconColor.colorWhite,
              size: 30,
            ),
          )
        ],
      ),
      drawer: const DrawerScreen(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 5, top: 5),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WingCoin(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/icons/wingcoin-v3.png",
                    height: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Myqrcode(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/icons/khqr decoder.jpg",
                      height: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  height: 370,
                  decoration: BoxDecoration(
                    color: BackgroundColor.colorWhite_2,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: GridView.builder(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: cardItemsLogin.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          _showPINScreen(context, cardItemsLogin[index].route);
                        },
                        child: CardItemLogin(
                          imageAsset: cardItemsLogin[index].imageAsset,
                          text: cardItemsLogin[index].text,
                          onTap: () {
                            _showPINScreen(
                                context, cardItemsLogin[index].route);
                          },
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: BackgroundColor.colorWhite,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: BackgroundColor.colorBlack.withOpacity(0.2),
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  CustomCard(
                                    iconPath:
                                        "assets/icons/typeOfWink/wing_mall-removebg-preview.png",
                                    imagePath:
                                        "assets/images/typeOfWing/berger.png",
                                    onTap: launchAppWingMall,
                                  ),
                                  CustomCard(
                                    iconPath:
                                        "assets/icons/typeOfWink/wing_express-removebg-preview.png",
                                    imagePath:
                                        "assets/images/typeOfWing/wingexpress.png",
                                    onTap: launchAppWingExpress,
                                  ),
                                  CustomCard(
                                    iconPath:
                                        "assets/icons/typeOfWink/wing_coin-removebg-preview.png",
                                    imagePath:
                                        "assets/icons/typeOfWink/wing_coin-icon.png",
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const WingCoin(),
                                      ),
                                    ),
                                  ),
                                  CustomCard(
                                    iconPath:
                                        "assets/icons/typeOfWink/wing_market-removebg-preview.png",
                                    imagePath:
                                        "assets/images/typeOfWing/wing-market.png",
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const WingMarket(),
                                      ),
                                    ),
                                  ),
                                  CustomCard(
                                    iconPath:
                                        "assets/icons/typeOfWink/wing_agri-removebg-preview.png",
                                    imagePath:
                                        "assets/icons/typeOfWink/wing-agri-removebg-preview.png",
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const WingAgri(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Promotions",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Show All",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.blue,
                                        size: 13,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              PromotionLog(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

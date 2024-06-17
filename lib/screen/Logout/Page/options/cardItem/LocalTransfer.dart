import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Logout/Page/options/cardItem/form.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class LocalTransfer extends StatelessWidget {
  const LocalTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 500,
              color: BackgroundColor.bgColor,
              child: Column(
                children: [
                  const SizedBox(height: 75),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 90),
                      const Text(
                        "Local Transfer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              width: 500,
              color: BackgroundColor.colorWhite_2,
              child: Column(
                children: [
                  Container(
                    // height: 200,
                    // width: 500,
                    child: Image.asset(
                      "assets/images/local_transfer.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        IconRowContainer(
                          icons: [
                            Icon(
                              Icons.person,
                              size: 35,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Icon(
                              Icons.person,
                              size: 35,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                          ],
                          text: "Wing Bank to Own Account",
                        ),
                        IconRowContainer(
                          icons: [
                            Image.asset(
                              "assets/icons/wing_icon Background Removed.png",
                              height: 40,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Image.asset(
                              "assets/icons/wing_icon Background Removed.png",
                              height: 35,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                          ],
                          text: "Wing Bank to Wing Bank",
                        ),
                        IconRowContainer(
                          icons: [
                            Image.asset(
                              "assets/icons/wing_icon Background Removed.png",
                              height: 40,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Image.asset(
                              "assets/icons/home.png",
                              height: 35,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                          ],
                          text: "Wing Bank to Others Bank",
                        ),
                        IconRowContainer(
                          icons: [
                            Image.asset(
                              "assets/icons/wing_icon Background Removed.png",
                              height: 40,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Icon(
                              Icons.phone_iphone,
                              size: 40,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                          ],
                          text: "Wing Wei Luy",
                        ),
                        IconRowContainer(
                          icons: [
                            Image.asset(
                              "assets/icons/wing_icon Background Removed.png",
                              height: 40,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                            Image.asset(
                              "assets/icons/trading.png",
                              height: 40,
                              color: const Color.fromARGB(255, 26, 80, 255)
                                  .withOpacity(0.8),
                            ),
                          ],
                          text: "Trading Account",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

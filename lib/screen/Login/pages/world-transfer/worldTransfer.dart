import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class WorldTransfer extends StatelessWidget {
  const WorldTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor2,
      body: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: const Center(
                  child: Text(
                    "Wing Bank to World",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: BackgroundColor.colorWhite_2,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      color: BackgroundColor.colorWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.black.withOpacity(0.2),
                      )),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          SizedBox(width: 15),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("My Account"),
                          ),
                        ],
                      ),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                            color: BackgroundColor.colorBlack.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black.withOpacity(0.2),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "100755073",
                                style: TextStyle(fontSize: 17),
                              ),
                              Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.identity()..rotateZ(pi / 2),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.90,
                        color: BackgroundColor.colorWhite_2,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "TO COUNTRY",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                            color: BackgroundColor.colorBlack.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black.withOpacity(0.2),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/icon-world-removebg-preview.png",
                                    height: 28,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    "Select country",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      "SEND",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

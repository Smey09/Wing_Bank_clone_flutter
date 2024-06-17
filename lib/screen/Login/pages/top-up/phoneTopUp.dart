import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class Phonetopup extends StatelessWidget {
  const Phonetopup({super.key});

  final List<Map<String, String>> items = const [
    {
      "image": "assets/icons/Phone/icons-cellcard.png",
      "text": "Cellcard",
    },
    {
      "image": "assets/icons/Phone/icons-smart.png",
      "text": "Smart",
    },
    {
      "image": "assets/icons/Phone/icons-metfone.png",
      "text": "Metfone",
    },
    {
      "image": "assets/icons/Phone/icons-seatel2.png",
      "text": "Seatel",
    },
    {
      "image": "assets/icons/Phone/icons-cootel.png",
      "text": "Cootel",
    },
  ];

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
                    "Phone Top Up",
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
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      color: BackgroundColor.colorWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.phone_iphone,
                              ),
                              Text(
                                "Number Phone",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 40,
                          decoration: BoxDecoration(
                            color: BackgroundColor.bgColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ),
                          child: const SizedBox(
                            width: 180,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.assignment_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Buy a Voucher",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      color: BackgroundColor.colorWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
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
                            ),
                          ),
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
                                  transform: Matrix4.identity()
                                    ..rotateZ(pi / 2),
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
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.90,
                          color: BackgroundColor.colorWhite_2,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PLEASE CHOOSE OPERATOR",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),

                        //! Start Items
                        SizedBox(
                          height: 250,
                          child: GridView.builder(
                            padding: const EdgeInsets.all(10),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              // mainAxisSpacing: 10,
                              childAspectRatio:
                                  MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height / 5),
                            ),
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          items[index]['image']!,
                                          height: 65,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        items[index]['text']!,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        //! End Items
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

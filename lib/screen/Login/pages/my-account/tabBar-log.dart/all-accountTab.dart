import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class AllAccountTab extends StatelessWidget {
  const AllAccountTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: BackgroundColor.colorWhite,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 0.9,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Savings",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const Text(
                              "Default",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text("Savings | 100***07*"),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "\$7093.09",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:wink_bank_clone/screen/Login/pages/my-account/tabBar-log.dart/Term-accountTab.dart';
import 'package:wink_bank_clone/screen/Login/pages/my-account/tabBar-log.dart/all-accountTab.dart';
import 'package:wink_bank_clone/screen/Login/pages/my-account/tabBar-log.dart/goal-accountTab.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        backgroundColor: BackgroundColor.bgColor,
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
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: const Center(
                    child: Text(
                      "My account",
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(90)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("Account"),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 0.9,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/cambodian-riel-icon.png",
                                  height: 14,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 3),
                                const Text(
                                  "820100.98",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Total Balance: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Image.asset(
                                  "assets/icons/cambodian-riel-icon.png",
                                  height: 10,
                                  color: Colors.white,
                                ),
                                const Text(
                                  " 820100.98",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 0.9,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$7093.09",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Total Balance: \$7093.09",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: BackgroundColor.colorWhite_2,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  "assets/icons/wingcoin-v3.png",
                                  height: 30,
                                ),
                              ),
                              const Text("Wingpoints: "),
                              const Text(
                                "0",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                    ButtonsTabBar(
                      height: 40,
                      backgroundColor: Colors.blue,
                      unselectedBackgroundColor: Colors.grey[300],
                      unselectedLabelStyle:
                          const TextStyle(color: Colors.black),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      tabs: const [
                        Tab(text: " All "),
                        Tab(text: " Goal "),
                        Tab(text: " Term Deposit "),
                        Tab(text: " Current "),
                        Tab(text: " Savings "),
                      ],
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          AllAccountTab(),
                          GoalAccountTab(),
                          TermAccountTab(),
                          Center(child: Text("Current")),
                          Center(child: Text("Savings")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

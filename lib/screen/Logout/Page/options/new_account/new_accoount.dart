import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wink_bank_clone/screen/Logout/Page/auth/register.dart';
import 'package:wink_bank_clone/screen/Logout/Page/options/new_account/item_account.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
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
                  const Text(
                    "New Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "You can open a new account and have access to your funds just in seconds.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              width: 500,
              color: BackgroundColor.colorWhite_2,
              child: Container(
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const InfoCard(
                        imagePath: "assets/icons/icon-save-goal.png",
                        title: "Save for Goal",
                        description:
                            "Save for anything you want and earn interest rate up to 8.75% p.a. plus a special offer for your goal",
                      ),
                      const InfoCard(
                        imagePath: "assets/icons/icon-term-deposit.png",
                        title: "Term Deposit",
                        description:
                            "Earn a high income up to 9% p.a. as interest from your deposit amount",
                      ),
                      const InfoCard(
                        imagePath: "assets/icons/saving-icon.png",
                        title: "Saving Account",
                        description:
                            "Earn a high interest rate up to 3% p.a. and get paid every month",
                      ),
                      const InfoCard(
                        imagePath: "assets/icons/icons-current-account.png",
                        title: "Current Account",
                        description:
                            "Move your fund freely up to \$150,000 per day for your daily needs",
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 120,
                          width: 500,
                          decoration: BoxDecoration(
                            color: BackgroundColor.colorWhite,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Interest Rate Calculate",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(Icons.chevron_right),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

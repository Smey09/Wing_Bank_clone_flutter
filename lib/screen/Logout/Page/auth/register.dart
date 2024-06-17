import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wink_bank_clone/screen/Logout/Page/auth/register/current_account.dart';
import 'package:wink_bank_clone/screen/Logout/Page/auth/register/saving_account.dart';

import '../../../../theme/colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor2,
      body: Column(
        children: [
          const SizedBox(height: 55),
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
              const SizedBox(width: 40),
              const Text(
                "Register New Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              print("Saving Account: .....");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterSavingAccount(),
                ),
              );
            },
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: BackgroundColor.colorWhite,
                gradient: LinearGradient(
                  colors: [
                    BackgroundColor.colorWhite,
                    // BackgroundColor.bgColor2,
                    const Color.fromARGB(255, 148, 240, 128),
                  ],
                  begin: Alignment.topLeft +
                      Alignment.topRight +
                      Alignment.bottomCenter +
                      Alignment.bottomCenter +
                      Alignment.bottomLeft +
                      Alignment.topRight,
                  end: Alignment.bottomRight,
                ),
                // borderRadius: BorderRadius.circular(30),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Saving Account",
                          style: TextStyle(
                            color: Color.fromARGB(255, 145, 230, 54),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            "Explore our Mobile Savings Account: secure and easy, with cash deposit and withdrawal at Wing nationwide,",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                        GestureDetector(
                          onTap: () {
                            print("GET STARTED ....");
                          },
                          child: const Row(
                            children: [
                              Text(
                                "GET STARTED",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 145, 230, 54),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 90),
                      Image.asset(
                        "assets/poster/saving_money.png",
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              print("Current Account: .....");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterCurrentAccount(),
                ),
              );
            },
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: BackgroundColor.colorWhite,
                gradient: LinearGradient(
                  colors: [
                    BackgroundColor.colorWhite,
                    // BackgroundColor.bgColor2,
                    Color.fromARGB(255, 82, 136, 228),
                  ],
                  begin: Alignment.topLeft +
                      Alignment.topRight +
                      Alignment.bottomCenter +
                      Alignment.bottomCenter +
                      Alignment.bottomLeft +
                      Alignment.topRight,
                  end: Alignment.bottomRight,
                ),
                // borderRadius: BorderRadius.circular(30),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Current Account",
                          style: TextStyle(
                            color: Color.fromARGB(255, 55, 108, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            "Explore seamless backing with Wing nationwide cash access. Stay in control of your finances!",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                        const Row(
                          children: [
                            Text(
                              "GET STARTED",
                              style: TextStyle(
                                color: Color.fromARGB(255, 55, 108, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 90),
                      Image.asset(
                        "assets/poster/current_account.png",
                        width: 170,
                        fit: BoxFit.cover,
                      ),
                    ],
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

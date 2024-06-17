import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Row(
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
                  const SizedBox(width: 130),
                  const Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 68, 67, 66),
                  border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(0.15),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/wing_bank_tower.png",
                      height: 155,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.blue.withOpacity(0.9),
                        ),
                        color: BackgroundColor.colorWhite,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        height: 837,
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/icons/wing-bank-icons.png",
                                width: 180,
                              ),
                              Text(
                                "The Wing Bank App is a mobile application that allows Wing Bank users to manage their Wing Bank Accounts. It enables them to use Wing Bank services such as sending money to other Wing Bank users, topping up their mobile phones, paying their bills.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                "Powered by the leading mobile banking services provider in Cambodia, the Wing Bank App allows for faster, easier, and more secure transactions for all Wing Bank users!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                "Care Center",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.9),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  try {
                                    String Number_1 = "012 999 989";
                                    launch('tel:$Number_1');
                                    print("Success to launch to $Number_1 ");
                                  } catch (error) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Failed to initiate phone call.'),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.blue,
                                        size: 28,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "012 999 989",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  try {
                                    String Number_2 = "012 999 489";
                                    launch('tel: $Number_2');
                                    print("Success to launch to $Number_2");
                                  } catch (error) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Failed to initiate phone call.'),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 15,
                                  ),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.blue,
                                        size: 28,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "012 999 489",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  String BaseUrl =
                                      "care.centre@wingbank.com.kh";
                                  final Uri _emailLaunchUri = Uri(
                                    scheme: 'mailto',
                                    path: 'care.centre@wingbank.com.kh',
                                  );
                                  try {
                                    launch(_emailLaunchUri.toString());
                                    print(
                                        "Success to launch the email: $BaseUrl");
                                  } catch (error) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Could not open email app. Try visiting Wing Bank\'s website.'),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.mail,
                                        color: Colors.blue,
                                        size: 25,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "care.centre@wingbank.com.kh",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 15, top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Find out more about Wing Bank",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 20,
                                        bottom: 5,
                                      ),
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              "assets/images/contact/logo-broswer.png",
                                              height: 40,
                                            ),
                                            Image.asset(
                                              "assets/images/contact/logo-facebook.png",
                                              height: 40,
                                            ),
                                            Image.asset(
                                              "assets/images/contact/logo-instagram.png",
                                              height: 40,
                                            ),
                                            Image.asset(
                                              "assets/images/contact/Logo-twitter.png",
                                              height: 40,
                                            ),
                                            Image.asset(
                                              "assets/images/contact/logo-youtube.png",
                                              height: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "App Version: 4,21,9",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.9),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
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
        ],
      ),
    );
  }
}

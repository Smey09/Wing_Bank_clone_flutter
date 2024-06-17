import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

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
                  const SizedBox(width: 140),
                  const Text(
                    "FAQs",
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
            flex: 8,
            child: SingleChildScrollView(
              child: Container(
                width: 500,
                color: BackgroundColor.colorWhite,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1. What is WingBank?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "Wing Bank (Cambodia) Ple - the bank for every Cambodian - is driven by the vision to provide every Cambodian with convenient access to financial services relevant to, and for the improvement of their daily lives.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2. What is WingBank App?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "The Wing Bank App is a mobile application that allows Wing Bank users to manage their Wing Bank accounts. It enables them to use Wing Bank services more than just a normal mobile banking app. Powered by Wing Bank (Cambodia) Plc. the bank for every Cambodian, the Wing Bank App allows for faster, easier, and more secure transactions for all Wing Bank users.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "3. How do I start using the Wing Bank App?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "Simply download Wing Bank App from Google PlayStore or Apple Store. Register account with your mobile phone number and enjoy the services from Wing Bank. You also can sign-in your existing Wing Bank account on Wing Bank App as well.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "4. How do I register on the Wing Bank App?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Column(
                                  children: [
                                    Text(
                                      "Registration to the Wing Bank App is simple and easy! Just follow the steps below:",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 8, bottom: 8),
                                          child: Text(
                                            "You required to have a valid mobile phone number and valid NID/Passport",
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "a. Download the app from Google PlayStore or Apple Store"),
                                              Text(
                                                  "b. Select 'Register New Account' and choseWing Bank Account"),
                                              Text(
                                                  "c. Choose your preferred account type (Saving Account or Current Account)"),
                                              Text(
                                                  "d. Enter your valid phone number (this number will be used as your login ID) you will receive OTP and it will be auto completed."),
                                              Text(
                                                  "e. Start to take liveliness photo by following the instruction"),
                                              Text(
                                                  "f. Scan your NID/Passport information"),
                                              Text(
                                                  "g. Complete your additional information and banking information"),
                                              Text(
                                                  "h. Create new PIN code for your account"),
                                              Text("i. Confirm your PIN code"),
                                              Text(
                                                  "j. Wing Bank account registered and enjoy all serviced from Wing Bank"),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "5. How do I get a Wing Bank Account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "You can do self-registration on Wing Bank App or just go to nearest Wing Bank branch or Wing agent to register for Wing Bank account. You required to have a valid mobile phone number and valid NID/Passport or other type of valid personal identification to register for Wing Bank account.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "6. How do I log into the Wing Bank App?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "Just go the Wing Bank App and select on Sign-In button. You need to enter your registered mobile phone number and you will receive and OTP code (OTP code will be auto complete). Once you are logged in, you can start using the service through the app!",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "7. How do I enroll my Wing account in the Wing Bank App?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "Just go the Wing Bank App and select on Sign-In button. You need to enter your registered mobile phone number and you will receive and OTP code (OTP code will be auto complete). Next step, you will have to enter your Wing Bank account number and PIN code in order to enroll your account in the app. Tap on 'Continue' button and you're logged in and you can start using services through the app.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "8. How many Wing Bank accounts can I enroll in my Wing Bank App?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "You can enroll up to 8 Wing Bank accounts in the app.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "9. How can I add more Wing Bank account on the app?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 20, top: 5, bottom: 5),
                                child: Text(
                                  "Just go to 'My Account' on home screen and select 'Add Account' to add your Wing Bank account. Enter your Wing Bank account number and enter your PIN to confirm your enrolment. It's that simple!",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

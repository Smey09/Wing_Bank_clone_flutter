import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Login/pages/loan/loanPage-log.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class LoanPosterLog extends StatelessWidget {
  const LoanPosterLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.colorWhite,
      body: Column(
        children: [
          const SizedBox(height: 45),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black.withOpacity(0.7),
                    size: 28,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoanPageLog(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black.withOpacity(0.7),
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset("assets/images/image-loan.png"),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome, REAKSMEY",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "It's a great day to see you here. We are excited to introduce our first-ever digital credit limit offer that serves your best needs. Let's dive in!",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.28),
          const Padding(
            padding: EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

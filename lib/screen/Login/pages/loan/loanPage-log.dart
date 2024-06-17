import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wink_bank_clone/screen/Login/pages/loan/CardItems-loanLog.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class LoanPageLog extends StatelessWidget {
  const LoanPageLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor2,
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
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                const Text(
                  "Loan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  "assets/icons/load-log-icons.png",
                  height: 35,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: BackgroundColor.colorWhite_2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.78,
                    child: CarditemsLoanLog(),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Center(
                        child: Text(
                          "NEW LOAN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

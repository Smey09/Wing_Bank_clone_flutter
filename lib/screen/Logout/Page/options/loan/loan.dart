import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Logout/Page/options/loan/form-loan.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class Loan extends StatelessWidget {
  const Loan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor,
      body: Column(
        children: [
          const SizedBox(height: 35),
          Expanded(
            flex: 1,
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
                  "Loan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: BackgroundColor.colorWhite_2,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      LoanCard(
                        imagePath: 'assets/images/loan/load-quick.png',
                        title: 'Quick Loan',
                        description: 'A personal loan for Wing Bank customers.',
                        iconPath:
                            'assets/icons/Blue_question_mark_icon.svg.png',
                        audience: const ["Staff", "Private Worker", "Student"],
                      ),
                      LoanCard(
                        imagePath: 'assets/images/loan/quick-cash-advance.jpeg',
                        title: 'Quick Cash Advance',
                        description:
                            'A salary loan for our partnered factories.',
                        iconPath:
                            'assets/icons/Blue_question_mark_icon.svg.png',
                        audience: const ["Staff", "Private Worker", "Student"],
                      ),
                      LoanCard(
                        imagePath:
                            'assets/images/loan/Kbank-salary-advance.jpg',
                        title: 'KBank Salary Advance',
                        description:
                            'A salary loan from Kbank and Wing Bank for our partner factories.',
                        iconPath:
                            'assets/icons/Blue_question_mark_icon.svg.png',
                        audience: const [
                          "Employees using Wing Payroll Service.",
                        ],
                      ),
                      LoanCard(
                        imagePath: 'assets/images/loan/rcc-sarary-advance.png',
                        title: 'RCC Salary Advance',
                        description:
                            'A salary loan for employees under RGC Group.',
                        iconPath:
                            'assets/icons/Blue_question_mark_icon.svg.png',
                        audience: const [
                          "Employees under RGC Group",
                        ],
                      ),
                      LoanCard(
                        imagePath: 'assets/images/loan/Wing-Bank.jpg',
                        title: 'Wing Loan Request',
                        description: 'Many loan types for Wing Bank customers.',
                        iconPath:
                            'assets/icons/Blue_question_mark_icon.svg.png',
                        audience: const [
                          "All Wing Bank customers",
                        ],
                      ),
                      LoanCard(
                        imagePath:
                            'assets/images/loan/partner-loan-reqeuest.jpg',
                        title: 'Partner Loan Request',
                        description:
                            'Loan products offered by our partner banks',
                        iconPath:
                            'assets/icons/Blue_question_mark_icon.svg.png',
                        audience: const [
                          "All Wing Bank customers",
                        ],
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

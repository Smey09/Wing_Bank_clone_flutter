import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class CarditemsLoanLog extends StatelessWidget {
  CarditemsLoanLog({super.key});

  // Sample loan data
  final List<Map<String, String>> loanData = [
    {
      'status': 'COMPLETED',
      'loadID': 'LONID02387455',
      'amount': '\$500.00',
      'loanType': 'RGC Salary Loan',
      'interestRate': '1.00%',
      'monthlyPayment': '\$23.46',
      'requestedDate': '05/06/2024 07:22 AM',
      'disbursementDate': '05/06/2024 07:22 AM',
    },
    {
      'status': 'COMPLETED',
      'loadID': 'LONID02383864',
      'amount': '\$100.00',
      'loanType': 'RGC Salary Loan',
      'interestRate': '1.00%',
      'monthlyPayment': '\$4.69',
      'requestedDate': '04/06/2024 09:01 AM',
      'disbursementDate': '04/06/2024 09:01 AM',
    },
    {
      'status': 'COMPLETED',
      'loadID': 'LONID02127806',
      'amount': '\$1000.00',
      'loanType': 'RGC Salary Loan',
      'interestRate': '1.00%',
      'monthlyPayment': '\$88.80',
      'requestedDate': '27/04/2024 12:25 PM',
      'disbursementDate': '27/04/2024 12:25 PM',
    },
    {
      'status': 'COMPLETED',
      'loadID': 'LONID02127806',
      'amount': '\$2000.00',
      'loanType': 'RGC Salary Loan',
      'interestRate': '1.00%',
      'monthlyPayment': '\$177.60',
      'requestedDate': '27/04/2024 12:25 PM',
      'disbursementDate': '27/04/2024 12:25 PM',
    },
    {
      'status': 'COMPLETED',
      'loadID': 'LONID02127806',
      'amount': '\$5000.00',
      'loanType': 'RGC Salary Loan',
      'interestRate': '1.00%',
      'monthlyPayment': '\$444.00',
      'requestedDate': '27/04/2024 12:25 PM',
      'disbursementDate': '27/04/2024 12:25 PM',
    },
    {
      'status': 'COMPLETED',
      'loadID': 'LONID02127806',
      'amount': '\$10000.00',
      'loanType': 'RGC Salary Loan',
      'interestRate': '1.00%',
      'monthlyPayment': '\$888.00',
      'requestedDate': '27/04/2024 12:25 PM',
      'disbursementDate': '27/04/2024 12:25 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: loanData.map((loan) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: BackgroundColor.colorWhite,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 0.3,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  loan['status']!,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Load ID: ",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.7),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      loan['loadID']!,
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.7),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Container(
                                  height: 125,
                                  width: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.86,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        loan['amount']!,
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Loan Type:",
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                          Text(
                                            loan['loanType']!,
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Interest Rate Per Month:",
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                          Text(
                                            loan['interestRate']!,
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Estimated Monthly Payment:",
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                          Text(
                                            loan['monthlyPayment']!,
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Requested Date:",
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                          Text(
                                            loan['requestedDate']!,
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Disbursement Date:",
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                          Text(
                                            loan['disbursementDate']!,
                                            style: TextStyle(
                                              fontSize: 11,
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

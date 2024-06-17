import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class FreeFashout extends StatelessWidget {
  const FreeFashout({super.key});

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
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "FREE CASH OUT PACKAGE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Enjoy free Cash-Out at any Wing agents nationwide.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.warning_sharp,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "The daily allowed amount and limit are based on your account type.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: BackgroundColor.colorWhite_2,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildPackage(
                      context,
                      title: "Standard",
                      price: "\$5",
                      limit: "USD 10,000",
                      frequency: "5 times/day and 60 times/year",
                    ),
                    _buildPackage(
                      context,
                      title: "Silver",
                      price: "\$10",
                      limit: "USD 20,000",
                      frequency: "10 times/day and 120 times/year",
                    ),
                    _buildPackage(
                      context,
                      title: "Gold",
                      price: "\$15",
                      limit: "USD 50,000",
                      frequency: "15 times/day and 200 times/year",
                    ),
                    _buildPackage(
                      context,
                      title: "Platinum",
                      price: "\$50",
                      limit: "USD 1000,000",
                      frequency: "50 times/day and 1000 times/year",
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

  Widget _buildPackage(
    BuildContext context, {
    required String title,
    required String price,
    required String limit,
    required String frequency,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: BackgroundColor.colorWhite,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.black.withOpacity(0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const Column(
                    children: [
                      SizedBox(height: 8),
                      Text("Per Year"),
                    ],
                  ),
                ],
              ),
              const Column(
                children: [
                  SizedBox(height: 8),
                  Text(
                    "Billed Annually",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text("• Yearly free cash-out limit up to $limit"),
          Text("• Free cash-out up to $frequency"),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 4, 140, 251),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              child: const Text(
                "SUBSCRIBE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

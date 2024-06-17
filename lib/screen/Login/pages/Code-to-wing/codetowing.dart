import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class CodeToWing extends StatelessWidget {
  const CodeToWing({super.key});

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Colors.white, size: 26),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.80,
          child: const Center(
            child: Text(
              "Code to Wing",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 5),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _buildOption(String imagePath, String text) {
    return Container(
      height: 75,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: BackgroundColor.colorWhite,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.5, color: Colors.black.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imagePath, height: 45),
                ),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor2,
      body: Column(
        children: [
          const SizedBox(height: 40),
          _buildHeader(context),
          const SizedBox(height: 5),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: BackgroundColor.colorWhite_2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    _buildSectionTitle("Wei Luy Xpress"),
                    const SizedBox(height: 5),
                    _buildOption(
                        "assets/icons/CodetoWing/wing-icons.png", "Wing"),
                    const SizedBox(height: 10),
                    _buildSectionTitle("International Remittance"),
                    _buildOption("assets/icons/CodetoWing/Western Union.png",
                        "Western Union"),
                    _buildOption(
                        "assets/icons/CodetoWing/MoneyGram.png", "MoneyGram"),
                    _buildOption(
                        "assets/icons/CodetoWing/Ria.jpeg", "MoneyGram"),
                    const SizedBox(height: 10),
                    _buildSectionTitle("Partner's Redemption"),
                    const SizedBox(height: 5),
                    _buildOption(
                        "assets/icons/CodetoWing/My Boy.jpeg", "My Boy"),
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

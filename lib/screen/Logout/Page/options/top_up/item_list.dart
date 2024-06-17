import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Logout/Page/auth/register.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class CircleTextContainer extends StatelessWidget {
  final String text;
  const CircleTextContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Register(),
          ),
        );
      },
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: BackgroundColor.bgColor,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

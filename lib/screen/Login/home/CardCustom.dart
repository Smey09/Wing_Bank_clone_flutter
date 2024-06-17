import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class CustomCard extends StatelessWidget {
  final String iconPath;
  final String imagePath;
  final VoidCallback? onTap;

  const CustomCard({
    required this.iconPath,
    required this.imagePath,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          height: 130,
          width: 100,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                BackgroundColor.colorWhite,
                BackgroundColor.bgColor2,
              ],
              center: Alignment.center,
              radius: 0.5,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  iconPath,
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                imagePath,
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BillItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color imageColor;
  final Function onTap;

  const BillItem({
    super.key,
    required this.imagePath,
    required this.title,
    this.imageColor = Colors.blue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: 190,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              width: 1,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15),
                child: Image.asset(
                  imagePath,
                  height: 35,
                  color: imageColor,
                ),
              ),
              SizedBox(
                width: 120,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardItemLogin extends StatelessWidget {
  final String imageAsset;
  final String text;
  final Function onTap;

  const CardItemLogin({
    super.key,
    required this.imageAsset,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        // color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

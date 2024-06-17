import 'package:flutter/material.dart';
import 'package:wink_bank_clone/models/data/promotion.dart';
import 'package:wink_bank_clone/screen/Logout/Page/auth/register.dart';

// ignore: must_be_immutable
class Promotion extends StatelessWidget {
  Promotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: promotions.map((promotion) {
        return GestureDetector(
          onTap: () {
            print(
              promotion['onPress'],
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Register(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                promotion['image']!,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

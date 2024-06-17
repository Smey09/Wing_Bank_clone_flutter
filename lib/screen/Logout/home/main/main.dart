import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Logout/home/main/changeLanguage.dart';
import 'package:wink_bank_clone/theme/colors.dart';

import 'body.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {
  String selectedLanguage = 'English';

  void _showLanguageDialog(BuildContext context) async {
    await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return ChangeLanguageDialog(
          onLanguageSelected: (language) {
            setState(() {
              selectedLanguage = language;
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBarScreen(context),
          body: const BodyScreen(),
        )
      ],
    );
  }

  AppBar appBarScreen(context) {
    return AppBar(
      backgroundColor: BackgroundColor.bgColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/icons/wing-logo-white.png",
            height: 50,
          ),
          GestureDetector(
            onTap: () => _showLanguageDialog(context),
            child: Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    selectedLanguage,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateZ(pi / 2),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

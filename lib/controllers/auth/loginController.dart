import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Login/home/main.dart';

class LoginController {
  void handleLogin(String phoneNumber, BuildContext context) {
    if (phoneNumber == "090629027") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainBodyLog()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid phone number")),
      );
    }
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class RegisterCurrentAccount extends StatefulWidget {
  const RegisterCurrentAccount({super.key});

  @override
  _RegisterCurrentAccountState createState() => _RegisterCurrentAccountState();
}

class _RegisterCurrentAccountState extends State<RegisterCurrentAccount> {
  final TextEditingController _controller = TextEditingController();
  Color _continueTextColor = Colors.blue.withOpacity(0.6);

  void _onChanged(String value) {
    setState(() {
      if (value.length == 9 || value.length == 10) {
        _continueTextColor = Colors.blue;
      } else {
        _continueTextColor = Colors.blue.withOpacity(0.6);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      const SizedBox(height: 60),
                      Image.asset(
                        "assets/icons/phone_log.png",
                        color: Colors.white.withOpacity(0.6),
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 700,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 233, 236, 243),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Register Current Account",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Please enter your phone number",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/cambodia-icon.png",
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.identity()
                                    ..rotateZ(pi / 2),
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.call,
                                    size: 30,
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 250,
                                    child: TextFormField(
                                      controller: _controller,
                                      onChanged: _onChanged,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Phone Number",
                                      ),
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.7),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 400),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: _continueTextColor,
                        ),
                        child: const Center(
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

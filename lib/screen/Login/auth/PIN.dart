import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class PIN extends StatefulWidget {
  final Widget route;
  const PIN({super.key, required this.route});

  @override
  State<PIN> createState() => _PINState();
}

class _PINState extends State<PIN> {
  String numPIN = '';
  void _checkPIN() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (numPIN == '1234') {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => widget.route));
      } else {
        print("Failed to login with " + numPIN);
        SchedulerBinding.instance.addPostFrameCallback(
          (_) => IconSnackBar.show(
            context,
            snackBarType: SnackBarType.alert,
            snackBarStyle: const SnackBarStyle(
              maxLines: 3,
            ),
            label: 'Not Correct, Please Try Again!',
          ),
        );
        setState(() {
          numPIN = '';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (numPIN.length >= 4) {
      _checkPIN();
    }

    return Scaffold(
      backgroundColor: BackgroundColor.colorWhite.withOpacity(0.4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: BackgroundColor.colorWhite.withOpacity(0.9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "assets/icons/password/password.png",
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Input PIN Code",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "Please enter PIN Code for account: 100755073",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor:
                      numPIN.length > 0 ? Colors.cyan : Colors.white,
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.white,
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor:
                      numPIN.length > 1 ? Colors.cyan : Colors.white,
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.white,
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor:
                      numPIN.length > 2 ? Colors.cyan : Colors.white,
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.white,
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor:
                      numPIN.length > 3 ? Colors.cyan : Colors.white,
                  minRadius: 10,
                ),
              )
            ],
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 110,
            ),
            children: [
              ...List.generate(
                9,
                (index) => IconButton(
                  onPressed: () {
                    setState(() {
                      if (numPIN.length < 4) {
                        numPIN += '${index + 1}';
                      }
                    });
                  },
                  icon: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white.withOpacity(0.2),
                      border: Border.all(
                        width: 1,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    numPIN = '';
                  });
                },
                icon: const Text(
                  "C",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (numPIN.length < 4) {
                      numPIN += '0';
                    }
                  });
                },
                icon: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white.withOpacity(0.2),
                    border: Border.all(
                      width: 1,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (numPIN.isNotEmpty) {
                      numPIN = numPIN.substring(0, numPIN.length - 1);
                    }
                  });
                },
                icon: const Icon(
                  Icons.backspace,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

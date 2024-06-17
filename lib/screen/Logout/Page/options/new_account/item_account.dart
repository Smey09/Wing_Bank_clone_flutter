import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Logout/Page/auth/register.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class InfoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const InfoCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Register(),
            ),
          );
        },
        child: Container(
          // height: 120,
          width: 500,
          decoration: BoxDecoration(
            color: BackgroundColor.colorWhite,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: 40,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 5),
                        if (title == "Save for Goal")
                          Image.asset(
                            "assets/icons/new.png",
                            height: 30,
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 290,
                          child: Text(
                            description,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

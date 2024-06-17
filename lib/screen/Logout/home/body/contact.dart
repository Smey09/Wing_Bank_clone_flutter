import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Logout/Page/information/FAQs/FAQs.dart';
import 'package:wink_bank_clone/screen/Logout/Page/information/about/about.dart';
import 'package:wink_bank_clone/screen/Logout/Page/information/contact-us/contact-us.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 241, 234, 234).withOpacity(0.2),
            offset: const Offset(1.0, 1.0),
            blurRadius: 1.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InfoItem(
              icon: Icons.question_mark_sharp,
              text: "FAQs",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FAQs(),
                ),
              ),
            ),
            InfoItem(
              icon: Icons.contact_emergency,
              text: "Contact Us",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactUs(),
                ),
              ),
            ),
            InfoItem(
              icon: Icons.person,
              text: "About Us",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const About(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const InfoItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black.withOpacity(0.3),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

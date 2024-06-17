import 'package:flutter/material.dart';
import 'package:wink_bank_clone/models/lists/items-drawer.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 155,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: BackgroundColor.bgColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/wing-logo-white.png",
                            height: 60,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 1000,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 26, 146, 244),
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "ROEM REAKSMEY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: const Text(
                          "Saving account #100755073",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            "View Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ...drawerItems.map((item) => buildDrawerItem(item)),
        ],
      ),
    );
  }

  Widget buildDrawerItem(Map<String, dynamic> item) {
    return ListTile(
      title: Row(
        children: [
          Icon(
            item['icon'],
            size: 22,
          ),
          const SizedBox(width: 20),
          Text(
            item['text'],
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
      onTap: item['onTap'],
    );
  }
}

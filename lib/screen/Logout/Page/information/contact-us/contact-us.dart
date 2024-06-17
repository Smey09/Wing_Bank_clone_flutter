import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchURL() async {
      const url = 'https://goo.gl/maps/KCksz3F19kbWFq2r6';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      backgroundColor: BackgroundColor.bgColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Row(
                children: [
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
                  const SizedBox(width: 105),
                  const Text(
                    "Contact Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: BackgroundColor.colorWhite_2,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 130,
                ),
                child: Container(
                  // width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.black.withOpacity(0.15),
                    ),
                    color: BackgroundColor.colorWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Head Office",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  right: 5, top: 10, bottom: 10),
                              child: Icon(
                                Icons.location_on_rounded,
                                size: 30,
                                color: Color.fromARGB(255, 254, 204, 39),
                              ),
                            ),
                            Container(
                              width: 300,
                              child: Text(
                                "721 Preah Monivong Blvd, Phnom Penh, Cambodia.",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          // onTap: _launchURL,
                          onTap: () {
                            try {
                              _launchURL();
                              print("Successfully to open the map");
                            } catch (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Failed to open on map'),
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: 500,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/contact/map-comtact.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: _launchURL,
                          onTap: () {
                            try {
                              _launchURL();
                              print("Successfully to open the map");
                            } catch (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Failed to open on map'),
                                ),
                              );
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(0.1),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.assistant_direction_outlined,
                                    color: Colors.blue,
                                    size: 25,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Get Direction in Map",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 10),
                          child: Container(
                            height: 1,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            try {
                              String Number_1 = "012 999 989";
                              launch('tel:$Number_1');
                              print("Success to launch to $Number_1 ");
                            } catch (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Failed to initiate phone call.'),
                                ),
                              );
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 15, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Care Center",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.blue,
                                        size: 28,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "023 999 989",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            try {
                              String Number_2 = "012 999 489";
                              launch('tel:$Number_2');
                              print("Success to launch to $Number_2 ");
                            } catch (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Failed to initiate phone call.'),
                                ),
                              );
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 15, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.blue,
                                        size: 28,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "012 999 489",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            String BaseUrl = "care.centre@wingbank.com.kh";
                            final Uri _emailLaunchUri = Uri(
                              scheme: 'mailto',
                              path: 'care.centre@wingbank.com.kh',
                            );
                            try {
                              launch(_emailLaunchUri.toString());
                              print("Success to launch the email: $BaseUrl");
                            } catch (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Could not open email app. Try visiting Wing Bank\'s website.'),
                                ),
                              );
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide.none,
                                bottom: BorderSide(
                                  color: Colors.black.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 15, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.mail,
                                        color: Colors.blue,
                                        size: 28,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "care.centre@wingbank.com.kh",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: Center(
                            child: Column(
                              children: [
                                const Text(
                                  "Find out more about Wing Bank",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/contact/logo-broswer.png",
                                          height: 35,
                                        ),
                                        Image.asset(
                                          "assets/images/contact/logo-facebook.png",
                                          height: 35,
                                        ),
                                        Image.asset(
                                          "assets/images/contact/logo-instagram.png",
                                          height: 35,
                                        ),
                                        Image.asset(
                                          "assets/images/contact/Logo-twitter.png",
                                          height: 35,
                                        ),
                                        Image.asset(
                                          "assets/images/contact/logo-youtube.png",
                                          height: 35,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Login/Cards/card-Page.dart';
import 'package:wink_bank_clone/screen/Login/Favorites/favorite-page.dart';
import 'package:wink_bank_clone/screen/Login/chat/chatPage.dart';

import 'package:wink_bank_clone/screen/Login/home/home-body-login.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class MainBodyLog extends StatefulWidget {
  const MainBodyLog({super.key});

  @override
  State<MainBodyLog> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<MainBodyLog> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeBodyLogin(),
    const FavoritePage(),
    const ChatPage(),
    const CardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: BackgroundColor.colorWhite,
        selectedItemColor: BackgroundColor.bgColor,
        unselectedItemColor: BackgroundColor.colorBlack.withOpacity(0.7),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: 'Cards',
            icon: Icon(Icons.card_giftcard),
          ),
        ],
      ),
    );
  }
}

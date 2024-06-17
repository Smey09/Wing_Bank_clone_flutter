import 'package:flutter/material.dart';
import 'package:wink_bank_clone/models/data/ChangeLanguage.dart';

class ChangeLanguageDialog extends StatefulWidget {
  final ValueChanged<String> onLanguageSelected;

  const ChangeLanguageDialog({required this.onLanguageSelected});

  @override
  _ChangeLanguageDialogState createState() => _ChangeLanguageDialogState();
}

class _ChangeLanguageDialogState extends State<ChangeLanguageDialog> {
  String selectedLanguage = '';

  void _onLanguageSelected(String language) {
    setState(() {
      selectedLanguage = language;
    });
    widget.onLanguageSelected(language);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
        child: Text(
          'Change Language',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          LanguageOption(
            icon: "assets/icons/languages/cambodia.png",
            languageText: 'ភាសាខ្មែរ',
            isSelected: selectedLanguage == 'ភាសាខ្មែរ',
            onChanged: (value) {
              if (value == true) {
                _onLanguageSelected('ភាសាខ្មែរ');
              } else {
                _onLanguageSelected('');
              }
            },
          ),
          LanguageOption(
            icon: "assets/icons/languages/united-kingdom.png",
            languageText: 'English',
            isSelected: selectedLanguage == 'English',
            onChanged: (value) {
              if (value == true) {
                _onLanguageSelected('English');
              } else {
                _onLanguageSelected('');
              }
            },
          ),
          LanguageOption(
            icon: "assets/icons/languages/china.png",
            languageText: '中國',
            isSelected: selectedLanguage == '中國',
            onChanged: (value) {
              if (value == true) {
                _onLanguageSelected('中國');
              } else {
                _onLanguageSelected('');
              }
            },
          ),
        ],
      ),
    );
  }
}

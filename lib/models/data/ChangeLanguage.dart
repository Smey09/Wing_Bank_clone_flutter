import 'package:flutter/material.dart';

class LanguageOption extends StatelessWidget {
  final String icon;
  final String languageText;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const LanguageOption({
    super.key,
    required this.icon,
    required this.languageText,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.black.withOpacity(0.2)),
      ),
      child: ListTile(
        leading: Image.asset(
          icon,
          height: 25,
        ),
        title: Text(languageText),
        trailing: Checkbox(
          value: isSelected,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

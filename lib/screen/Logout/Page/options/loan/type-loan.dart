import 'package:flutter/material.dart';

class TypeLoan extends StatelessWidget {
  final List<String> audience;

  TypeLoan({required this.audience});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Ideally for: "),
        Text(
          audience.join(", "),
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
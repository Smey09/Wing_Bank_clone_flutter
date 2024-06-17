import 'package:flutter/material.dart';

class FunctionModel {
  FunctionModel({
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
}

class MenuData {
  static List<FunctionModel> MenuListData = [
    FunctionModel(title: "Accounts", icon: Icons.account_balance_wallet),
    FunctionModel(title: "Cards", icon: Icons.credit_card_rounded),
    FunctionModel(title: "Payments", icon: Icons.monetization_on),
    FunctionModel(title: "Account", icon: Icons.add_box_rounded),
    FunctionModel(title: "CashATM", icon: Icons.store),
    FunctionModel(title: "Transfers", icon: Icons.swap_horizontal_circle),
    FunctionModel(title: "Scan QR", icon: Icons.qr_code_scanner_sharp),
    FunctionModel(title: "Loans", icon: Icons.clean_hands_sharp),
    FunctionModel(title: "Services", icon: Icons.grid_view_rounded),
  ];
}

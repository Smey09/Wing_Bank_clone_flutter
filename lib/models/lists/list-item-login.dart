import 'package:flutter/cupertino.dart';
import 'package:wink_bank_clone/screen/Login/pages/Code-to-wing/codetowing.dart';
import 'package:wink_bank_clone/screen/Login/pages/FreeCashOut/free-CashOut.dart';
import 'package:wink_bank_clone/screen/Login/pages/loan/loanPoster-log.dart';
import 'package:wink_bank_clone/screen/Login/pages/my-account/my-account-log.dart';
import 'package:wink_bank_clone/screen/Login/pages/new-account/newAccountLog.dart';
import 'package:wink_bank_clone/screen/Login/pages/top-up/phoneTopUp.dart';
import 'package:wink_bank_clone/screen/Login/pages/world-transfer/worldTransfer.dart';
import 'package:wink_bank_clone/screen/Logout/Page/options/biil-payment/group-first/bill-payment.dart';
import 'package:wink_bank_clone/screen/Logout/Page/options/cardItem/LocalTransfer.dart';

class CardItemData {
  final String imageAsset;
  final String text;
  final Widget route;

  const CardItemData({
    required this.imageAsset,
    required this.text,
    required this.route,
  });
}

List<CardItemData> cardItemsLogin = [
  const CardItemData(
    imageAsset: "assets/icons/login-items/wallet.png",
    text: "My Account",
    route: MyAccount(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/local_transfer.png",
    text: "Local Transfer",
    route: LocalTransfer(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/login-items/transactions.png",
    text: "World Transfer",
    route: WorldTransfer(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/bill_payment.png",
    text: "Bill Payment",
    route: BillPayment(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/top_up.png",
    text: "Phone Top Up",
    route: Phonetopup(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/login-items/code to wing.png",
    text: "Code to Wing",
    route: CodeToWing(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/new_account.png",
    text: "New Account",
    route: NewAccountLog(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/load.png",
    text: "Loan",
    route: LoanPosterLog(),
  ),
  const CardItemData(
    imageAsset: "assets/icons/login-items/free cash out.png",
    text: "Free Cash Out",
    route: FreeFashout(),
  ),
];

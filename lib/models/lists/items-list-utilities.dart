import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Logout/Page/auth/register.dart';

class ItemList_Utilities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.black.withOpacity(0.1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/logo-01.png",
                    "ANGTASOM WATER SUPPLY STATION"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/null-image.png",
                    "BOREY KAMKOR PHALIT NOENG PHKOT PHKONG TEUK SAAT CO., LTD."),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/null-image.png",
                    "Cheang Tong Water Supply"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/water-chum-kiri.jpg",
                    "Chumkiri Water Supply"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/enterprise.jpg",
                    "ENTERPRISE FOR MANAGING MUNICIPAL SOLID WASTE IN PHNOM PENH (EWP)"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/elec-du-cambode.png",
                    "Electricite Du Cambodge"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/null-image.png",
                    "Electricity Licensee (E-Power)"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/kroch-chhmar.png",
                    "KROCH CHHMAR WATER SUPPLY"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/null-image.png",
                    "Kampingpuoy Water Supply"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/water-kompongchomlong.png",
                    "Kompong Chomlong Water Supply"),
                buildDivider(),
                buildRow(
                    context,
                    "assets/images/bill-payment/utilities/null-image.png",
                    "Kraing Chek Water Supply and Production Station"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRow(BuildContext context, String imagePath, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Register(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 13, bottom: 13),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: Image.asset(imagePath, height: 40),
            ),
            SizedBox(
              width: 295,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 1,
        color: Colors.black.withOpacity(0.2),
      ),
    );
  }
}

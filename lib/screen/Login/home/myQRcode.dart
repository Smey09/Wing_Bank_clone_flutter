import 'package:flutter/material.dart';

class Myqrcode extends StatefulWidget {
  const Myqrcode({super.key});

  @override
  _MyqrcodeState createState() => _MyqrcodeState();
}

class _MyqrcodeState extends State<Myqrcode> {
  String price = '';

  void _updatePrice(String newPrice) {
    setState(() {
      price = newPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/my QR code.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              top: 50.0,
              left: 25.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/x-icon.png",
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 255.0,
              left: 75.0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      price.isEmpty ? '0' : price,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'USD',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 180.0,
              left: 50.0,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return PriceInputSheet(
                        initialPrice: price,
                        onPriceChanged: _updatePrice,
                      );
                    },
                  );
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.76,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceInputSheet extends StatefulWidget {
  final String initialPrice;
  final ValueChanged<String> onPriceChanged;

  const PriceInputSheet({
    super.key,
    required this.initialPrice,
    required this.onPriceChanged,
  });

  @override
  _PriceInputSheetState createState() => _PriceInputSheetState();
}

class _PriceInputSheetState extends State<PriceInputSheet> {
  late String price;
  String? limitePrice;

  @override
  void initState() {
    super.initState();
    price = widget.initialPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          Container(
            height: 5,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          const SizedBox(height: 3),
          const Text(
            'Enter Amount',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '\$',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          if (limitePrice != null)
            Text(
              limitePrice!,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          GridView(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              mainAxisExtent: 80,
            ),
            children: [
              ...List.generate(
                9,
                (index) => IconButton(
                  onPressed: () {
                    setState(() {
                      if (price.length < 5) {
                        price += '${index + 1}';
                        limitePrice = null;
                        print(price);
                      }
                      if (double.parse(price) > 50000) {
                        limitePrice =
                            'Amount should be between \$0.00 and \$50,000.00';
                        print(limitePrice);
                      } else {
                        print(limitePrice);
                      }
                    });
                  },
                  icon: Center(
                    child: Text(
                      "${index + 1}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    price = '';
                    limitePrice = null;
                  });
                },
                icon: const Text(
                  "C",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (price.length < 4) {
                      price += '0';
                      limitePrice = null;
                    }
                  });
                },
                icon: const Center(
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (price.isNotEmpty) {
                      price = price.substring(0, price.length - 1);
                      limitePrice = null;
                    }
                  });
                },
                icon: const Icon(
                  Icons.backspace,
                  size: 22,
                  color: Colors.black,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              widget.onPriceChanged(price);
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 23, 104, 255),
              ),
              child: const Center(
                child: Text(
                  "CONFIRM",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

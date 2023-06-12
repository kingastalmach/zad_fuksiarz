import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  const CustomText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 10,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Strings {
  static const String oferta = 'OFERTA';
  static const String moje = 'MOJE';
  static const String live = 'LIVE';
  static const String hot = 'HOT';
  static const String cashback = 'CASHBACK';
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            CustomText(Strings.oferta),
            CustomText(Strings.moje),
            CustomText(Strings.live),
            CustomText(Strings.hot),
            CustomText(Strings.cashback),
          ],
        ),
      ),
    ),
  );
}

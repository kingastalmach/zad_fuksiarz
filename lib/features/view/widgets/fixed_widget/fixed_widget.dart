import 'package:flutter/material.dart';
import '../app_colors/app_colors.dart';
import '../custom_text/custom_text.dart';

class FixedWidget extends StatelessWidget {
  const FixedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          Expanded(
            child: Container(
              color: AppColors.background,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Container(
            color: Colors.white,
            width: 50,
            child: const Center(
              child: Icon(Icons.calendar_today),
            ),
          ),
        ],
      ),
    );
  }
}

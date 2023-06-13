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
                  VerticalDivider(),
                  CustomText(Strings.moje),
                  VerticalDivider(),
                  CustomText(Strings.live),
                  Icon(Icons.circle, color: Colors.green, size: 8),
                  VerticalDivider(),
                  CustomText(Strings.hot),
                  VerticalDivider(),
                  CustomText(Strings.cashback),
                ],
              ),
            ),
          ),
          const VerticalDivider(),
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

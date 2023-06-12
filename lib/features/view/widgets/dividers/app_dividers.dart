import 'package:flutter/material.dart';
import '../app_colors/app_colors.dart';

class VerticalDivider extends StatelessWidget {
  final double width;
  final double thickness;
  final Color color;

  const VerticalDivider({
    Key? key,
    this.width = 1.0,
    this.thickness = 1.0,
    this.color = AppColors.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Divider(
            height: thickness,
            thickness: thickness,
            color: color,
          ),
        ],
      ),
    );
  }
}

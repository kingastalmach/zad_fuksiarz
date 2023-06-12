import 'package:flutter/material.dart';
import '../app_colors/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 1,
      indent: 0,
      endIndent: 0,
      color: AppColors.kInputBorder,
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../app_colors/app_colors.dart';

class BackgroundBase extends StatelessWidget {
  const BackgroundBase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: AppColors.primary,
    );
  }
}

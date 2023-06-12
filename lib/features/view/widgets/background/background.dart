import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: ExactAssetImage(
            "images/pattern 5.png",
          ), //obrazek na tło
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

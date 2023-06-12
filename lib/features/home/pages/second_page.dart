import 'package:flutter/material.dart';

import '../../widgets/app_colors/app_colors.dart';
import '../../widgets/search_bar/search_bar_second_page.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Column(
            children: [
              Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                  border: Border.symmetric(),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                  color: AppColors.background, //tło nagłówka
                ),
              ),
              SearchBarScPg(textEditingController: _textEditingController),
            ],
          ),
        ],
      ),
    );
  }
}

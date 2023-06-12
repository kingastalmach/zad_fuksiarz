import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/view/widgets/background/background.dart';
import 'package:flutter_application_1/features/view/widgets/background/background_base.dart';
import 'package:flutter_application_1/features/view/widgets/header/header.dart';
import '../widgets/dividers/divider_widget.dart';
import '../widgets/fixed_widget/fixed_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          BackgroundBase(),
          Background(),
          Column(
            children: [
              Header(),
              DividerWidget(),
              SearchBar(),
              DividerWidget(),
              FixedWidget(),
              DividerWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

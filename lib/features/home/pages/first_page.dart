import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/widgets/background/background.dart';
import 'package:flutter_application_1/features/widgets/background/background_base.dart';
import 'package:flutter_application_1/features/widgets/header/header.dart';

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
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/view/widgets/background/background.dart';
import 'package:flutter_application_1/features/view/widgets/background/background_base.dart';
import 'package:flutter_application_1/features/view/widgets/expansion_panel_list.dart/expansion_panel_list.dart';
import 'package:flutter_application_1/features/view/widgets/header/header.dart';
import 'package:flutter_application_1/features/view/widgets/search_bars/search_bar_w_first_page.dart';
import '../widgets/dividers/divider_widget.dart';
import '../widgets/fixed_widget/fixed_widget.dart';

class FirstPage extends StatelessWidget {
  FirstPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          const BackgroundBase(),
          const Background(),
          Column(
            children: [
              const Header(),
              const DividerWidget(),
              SearchBarWidget(textEditingController: _textEditingController),
              const DividerWidget(),
              const FixedWidget(),
              const DividerWidget(),
              const CustomExPanel(),
            ],
          ),
        ],
      ),
    );
  }
}

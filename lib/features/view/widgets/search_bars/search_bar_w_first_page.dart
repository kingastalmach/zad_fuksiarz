import 'package:flutter/material.dart';
import '../../pages/second_page.dart';
import '../app_colors/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController textEditingController;

  const SearchBarWidget({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.background,
            hintText: 'CZEGO SZUKASZ',
            hintStyle: const TextStyle(
              fontSize: 11,
              color: AppColors.text,
            ),
            prefixIcon: const Icon(
              Icons.search,
              size: 17,
              color: AppColors.text,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColors.kInputBorder,
                width: 1,
              ),
            ),
          ),
          style: const TextStyle(color: Colors.black),
          controller: textEditingController,
          textCapitalization: TextCapitalization.characters,
          showCursor: false,
          onTap: () {
            textEditingController.clear();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

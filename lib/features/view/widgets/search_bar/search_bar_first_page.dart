import 'package:flutter/material.dart';
import '../../pages/second_page.dart';
import '../app_colors/app_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required TextEditingController textEditingController,
  }) : _textEditingController = textEditingController;

  final TextEditingController _textEditingController;

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
            label: TextField(
              style: const TextStyle(color: Colors.black),
              controller: _textEditingController,
              textCapitalization: TextCapitalization.characters,
              showCursor: false,
              decoration: InputDecoration(
                hintText: 'CZEGO SZUKASZ',
                fillColor: AppColors.background,
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
              onTap: () {
                MainAxisAlignment.center;
                _textEditingController.clear();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

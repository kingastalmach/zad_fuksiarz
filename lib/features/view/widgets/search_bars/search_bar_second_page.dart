import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../app_colors/app_colors.dart';

class SearchBarScPg extends StatefulWidget {
  const SearchBarScPg({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  SearchBarScPgState createState() => SearchBarScPgState();
}

class SearchBarScPgState extends State<SearchBarScPg> {
  @override
  void initState() {
    super.initState();
    widget.textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.textEditingController.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    final searchText = widget.textEditingController.text;
    if (searchText.length >= 3) {
      // Wywołaj funkcję wyszukiwania lub wykonaj odpowiednie działania
      searchFunction(searchText);
    }
  }

  void searchFunction(String searchText) {
    // Tutaj umieść kod obsługujący wyszukiwanie
    // Możesz wywołać odpowiednią funkcję lub wykonać inne operacje
    if (kDebugMode) {
      print('Wyszukiwanie: $searchText');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          controller: widget.textEditingController,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.background,
            hintText: 'CZEGO SZUKASZ',
            hintStyle: const TextStyle(
              fontSize: 12,
              color: AppColors.text,
            ),
            prefixIcon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: AppColors.text,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColors.text,
                width: 2,
              ),
            ),
          ),
          onTap: () {
            widget.textEditingController.clear();
          },
        ),
      ),
    );
  }
}

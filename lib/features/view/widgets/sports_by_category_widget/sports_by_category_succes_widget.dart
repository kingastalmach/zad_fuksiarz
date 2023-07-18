import 'package:flutter/material.dart';

class SportsByCategorySuccessWidget extends StatelessWidget {
  const SportsByCategorySuccessWidget({
    Key? key,
    required this.categoryName,
    required this.sports,
  }) : super(key: key);

  final String categoryName;
  final List sports;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            bottom: 16.0,
          ),
          child: Text(
            categoryName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}

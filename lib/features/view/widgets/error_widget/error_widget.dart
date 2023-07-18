import 'package:flutter/material.dart';

class ErrorSportWidget extends StatelessWidget {
  const ErrorSportWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Something was wrong',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

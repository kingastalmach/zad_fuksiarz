import 'package:flutter/material.dart';
import '../app_colors/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kInputBorder, //obrys
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        color: AppColors.background, //tło nagłówka
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            image: AssetImage('images/logo.png'), //logo
            fit: BoxFit.scaleDown,
          ),
          RawChip(
            label: Text(
              '34,93zł',
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
            avatar: const Icon(
              Icons.add_circle,
              color: AppColors.primary,
            ),
            backgroundColor: AppColors.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: AppColors.kInputBorder),
            ),
          ),
        ],
      ),
    );
  }
}

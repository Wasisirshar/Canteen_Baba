import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextLogo extends StatelessWidget {
  const TitleTextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Canteen Baba',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextLogo extends StatelessWidget {
  const TitleTextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
                width: 45,
                height: 46,
              ),
             const SizedBox(
                width: 20,
              ),
              Text(
                'Canteen Baba',
                style: GoogleFonts.roboto(
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Center(
            child: Text('LOGIN \nAS CANTEEN ADMIN', style: GoogleFonts.roboto(
              fontSize: 40,
                color: const Color(0xff1890FF),
              fontWeight: FontWeight.w500,),),
          ),
        ),
      ],
    );
  }
}

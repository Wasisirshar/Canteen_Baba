import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginBtn extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const LoginBtn({super.key, required this.text, required this.onPressed});

  @override
  State<LoginBtn> createState() => _LoginBtnState();
}

class _LoginBtnState extends State<LoginBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 40,
      child: OutlinedButton(
        onPressed: widget.onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xff1890FF),
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
        ),
        child: Text(
          widget.text,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

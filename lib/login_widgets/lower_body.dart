import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../signup_widgets/signup.dart';

class LowerBodyLogin extends StatefulWidget {
  const LowerBodyLogin({super.key});

  @override
  State<LowerBodyLogin> createState() => _LowerBodyLoginState();
}

class _LowerBodyLoginState extends State<LowerBodyLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        Text(
          'Or',
          style: GoogleFonts.roboto(
              color: const Color(0xFF666666),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Group.png',
            ),
            const SizedBox(
              width: 25,
            ),
            const Icon(
              FontAwesomeIcons.facebook,
              size: 25,
              color: Color(0xff3B5998),
            ),
            const SizedBox(
              width: 25,
            ),
            const Icon(
              FontAwesomeIcons.apple,
              size: 25,
              color: Color(0xFF555555),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have an account?',
              style: GoogleFonts.roboto(
                  color: const Color(0xFF1F1F1F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp())),
              child: Text(
                ' Sign up',
                style: GoogleFonts.roboto(
                    color: const Color(0xFF1890FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

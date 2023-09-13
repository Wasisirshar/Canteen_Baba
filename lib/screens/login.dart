import 'package:canteen_baba_app/screens/constants/input_from_field.dart';
import 'package:canteen_baba_app/screens/constants/login_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/title_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleTextLogo(),
            TextFromField(),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Row(
                children: [
                  MyCheckbox(),
                  Text(
                    'Remember Me',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: const Color(0xff0000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  InkWell(
                    child: Text('Forget Your Password?',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: const Color(0xff1890FF),
                          fontWeight: FontWeight.w400,
                        )),
                    onTap: () {},
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            LoginBtn(onPressed: (){},text: 'Login'),
          ],
        ),
      ),
    );
  }
}

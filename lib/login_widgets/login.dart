import '../components/input_from_field.dart';
import '../components/login_btn.dart';
import '../components/title_text.dart';
import 'lower_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String orText = 'Or';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              //TextLOgo on the Top
              const TitleTextLogo(),
//      The heigt is form the logo text to input field
              const SizedBox(
                height: 156,
              ),
              //input from field having hint text
              const InputText(
                'Email',
                Icon(
                  Icons.person_2_outlined,
                  color: Color(0xff1890FF),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              const InputText(
                'password',
                Icon(
                  Icons.lock,
                  color: Color(0xff1890FF),
                ),
              ),

              const SizedBox(
                height: 22,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Row(
                  children: [
                    const MyCheckbox(),
                    Text(
                      'Remember Me',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    InkWell(
                      child: Text('Forget Your Password?',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: const Color(0xFF1890FF),
                            fontWeight: FontWeight.w400,
                          )),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              LoginBtn(onPressed: () {}, text: 'Login'),
              SizedBox(
                height: 20,
              ),
              LowerBodyLogin(),
            ],
          ),
        ),
      ),
    );
  }
}

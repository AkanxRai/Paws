import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paws/pages/signup_page.dart';
import 'package:paws/themes/themes.dart';
import 'package:paws/widgets/cta_buton.dart';
import 'package:paws/widgets/text_button_login.dart';
import 'package:paws/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Center(
                    child: Text(
                  'English',
                  style: TextStyle(fontWeight: FontWeight.w200),
                )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Your pet\'s happy place',
                  style: GoogleFonts.notoSerifDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                  child: Image.asset(
                      'assets/images/dog_training_login_screen.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Paws',
                            style: GoogleFonts.notoSerifDisplay(
                                fontSize: 35,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const LoginBtn1(
                            hintText: 'Username, Phone number or E-mail',
                            obscureText: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const LoginBtn1(
                            hintText: 'Password',
                            icon: Icon(Icons.lock_outline_rounded),
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: const CTAButton(
                            text: 'Sign In'
                            ),
                            onTap:(){
                              Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                            } ,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                              'Forgot Login Details? Get Help Logging in'),
                          const Divider(
                            color: grey,
                            indent: 20,
                            endIndent: 20,
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t Have an account? '),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const SignUpPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Signup now',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

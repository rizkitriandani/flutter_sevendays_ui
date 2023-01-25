import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstLogin extends StatelessWidget {
  const FirstLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff181A20),
        body: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/ic_currency.png',
                width: 50,
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                'Welcome back.\nLet’s make money.',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 70,
              ),
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    fillColor: const Color(0xff262A34),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Email',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xff6F7075))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white, fontSize: 15),
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: const Color(0xff262A34),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_outlined,
                      color: Color(0xff6F7075),
                    ),
                    hintText: 'Password',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xff6F7075))),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget My Password',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff6F7075),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 117,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffFCAC15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17))),
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.openSans(
                        color: const Color(0xff6B4909),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 14),
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: GoogleFonts.poppins(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}

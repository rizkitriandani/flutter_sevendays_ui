import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondLogin extends StatelessWidget {
  const SecondLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF8F8F8),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(28, 64, 28, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/img_bills.png',
                  width: 240,
                ),
              ),
              Text('Email Address',
                  style: GoogleFonts.openSans(
                    color: const Color(0xff17171A),
                    fontSize: 14,
                  )),
              const SizedBox(height: 6),
              TextFormField(
                style: GoogleFonts.openSans(
                    color: const Color(0xff17171A),
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    fillColor: const Color(0xffF3F3F3),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter Your Email',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xff6F7075))),
              ),
              const SizedBox(height: 20),
              Text('Password',
                  style: GoogleFonts.openSans(
                    color: const Color(0xff17171A),
                    fontSize: 14,
                  )),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                style: GoogleFonts.openSans(
                    color: const Color(0xff17171A),
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    fillColor: const Color(0xffF3F3F3),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter your password',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xff6F7075))),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff5468FF),
                      shape: const StadiumBorder()),
                  child: Text(
                    "Log In",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: const StadiumBorder(
                          side: BorderSide(color: Color(0xffD3D3D3)))),
                  child: Text(
                    "Create New Account",
                    style: GoogleFonts.openSans(
                        color: const Color(0xffCFCFCF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

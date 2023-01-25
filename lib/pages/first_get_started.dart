import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstGetStarted extends StatelessWidget {
  const FirstGetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg_gs1.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Maximize Revenue',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                    'Gain more profit from cryptocurrency without any risk involved',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(23),
                      backgroundColor: const Color(0xff877BFB),
                      shape: const StadiumBorder()),
                  child: Image.asset(
                    'assets/ic_login.png',
                    width: 34,
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

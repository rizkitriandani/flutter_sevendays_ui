import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatelessWidget {
  const FirstSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff13131E),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              'assets/sword.png',
              width: 140,
            )),
            const SizedBox(
              height: 170,
            ),
            Text(
              'Venture',
              style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                  letterSpacing: 5.6),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondGetStarted extends StatelessWidget {
  const SecondGetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Health First.',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 24),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Exercise together with our best community fit in the world',
              style: GoogleFonts.poppins(
                color: const Color(0xff7A7A7A),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                'assets/img_gs2.png',
                height: 402,
                // width: MediaQuery.of(context).size.width,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffAFEA0D),
                ),
                child: Text(
                  "Shape my body",
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Terms & Conditions',
                style: GoogleFonts.poppins(
                  color: const Color(0xff757575),
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

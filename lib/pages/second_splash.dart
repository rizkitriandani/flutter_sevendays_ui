import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplash extends StatelessWidget {
  const SecondSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background_house.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset(
                "assets/home.png",
                width: 51,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'HouseQu',
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              )
          ],
        ),
            )),
      ),
    );
  }
}

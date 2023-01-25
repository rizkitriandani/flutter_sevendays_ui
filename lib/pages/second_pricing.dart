import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPricing extends StatelessWidget {
  const SecondPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff0B073E), Color(0xff602880)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const HeaderPricing2(),
            const SizedBox(
              height: 51,
            ),
            const ProFeature(
              title: 'Unlock Our Top Charts',
            ),
            const ProFeature(
              title: 'Save More than 1,000 Docs',
            ),
            const ProFeature(
              title: '24/7 Customer Support',
            ),
            const ProFeature(
              title: 'Track Company’s Spending',
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      elevation: 20,
                      alignment: Alignment.center,
                      backgroundColor: const Color(0xffE57C73),
                      shape: const StadiumBorder(),
                      shadowColor: const Color(0xffE57C73)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        width: 41,
                      ),
                      Text("Subscribe Now",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          )),
                      Image.asset(
                        'assets/ic_arrow2.png',
                        width: 41,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('Contact Support',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.underline)),
          ],
        ),
      ),
    );
  }
}

class ProFeature extends StatelessWidget {
  final String title;
  const ProFeature({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26, left: 28, right: 28),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(
          'assets/ic_check2.png',
          width: 26,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
        ),
      ]),
    );
  }
}

class HeaderPricing2 extends StatelessWidget {
  const HeaderPricing2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 76, right: 76),
      child: Column(
        children: [
          Image.asset(
            'assets/img_pro_features.png',
            width: 164,
          ),
          const SizedBox(
            height: 24,
          ),
          Text('Pro Features',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22)),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Unlock the winner modules and get more insights',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

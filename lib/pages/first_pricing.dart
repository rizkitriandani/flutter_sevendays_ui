import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../upgrade_model.dart';

class FirstPricing extends StatefulWidget {
  const FirstPricing({super.key});

  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int _selectedItem = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: List.generate(upgradeItems.length, (index) {
              return SelectionItem(
                  imageUri: upgradeItems[index].image,
                  title: upgradeItems[index].title,
                  subTitle1: upgradeItems[index].subTitle1,
                  subTitle2: upgradeItems[index].subTitle2,
                  selected: index == _selectedItem,
                  onTap: () {
                    setState(() {
                      _selectedItem = index;
                    });
                  });
            }),
          ),
          Flexible(
            child: TextButton(
                onPressed: _selectedItem != -1 ? () {} : null,
                style: TextButton.styleFrom(
                    disabledBackgroundColor: const Color(0xffD9DEEA),
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    fixedSize: const Size(double.infinity, 70),
                    backgroundColor: const Color(0xff6050E7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Upgrade',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Image.asset(
                      'assets/ic_arrow1.png',
                      width: 24,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 71, right: 82, top: 50),
      child: Column(
        children: [
          Image.asset(
            'assets/ic_crown.png',
            width: 100,
          ),
          const SizedBox(
            height: 48,
          ),
          Text(
            'Which one you wish to Upgrade?',
            style: GoogleFonts.poppins(
              color: const Color(0xff191919),
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SelectionItem extends StatelessWidget {
  //use ListView.generate and return this widget

  final String imageUri;
  final String title;
  final String subTitle1;
  final String subTitle2;
  final bool selected;
  final Function onTap;

  const SelectionItem({
    Key? key,
    required this.imageUri,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('onTap');
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
              color:
                  selected ? const Color(0xff6050E7) : const Color(0xffD9DEEA)),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 17,
            right: 26,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                imageUri,
                height: 60,
              ),
              const SizedBox(
                width: 7,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      color: const Color(0xff191919),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        text: subTitle1,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: const Color(0xffA3A8B8)),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' $subTitle2',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff5343C2)))
                        ]),
                  ),
                ],
              ),
              const Spacer(),
              Visibility(
                visible: selected,
                child: Image.asset(
                  'assets/ic_check1.png',
                  width: 26,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

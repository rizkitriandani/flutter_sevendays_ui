import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/date.dart';

class SecondCheckout extends StatefulWidget {
  const SecondCheckout({super.key});

  @override
  State<SecondCheckout> createState() => _SecondCheckoutState();
}

class _SecondCheckoutState extends State<SecondCheckout> {
  late bool available;
  late bool selected;
  List<DateModel> selectedDates = [];
  double totalPrice = 0.0;

  @override
  void initState() {
    available = false;
    selected = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFAFBFF),
        // backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //remove alignment to see the difference
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.elliptical(150, 80),
                    bottomRight: Radius.elliptical(150, 80)),
              ),
              child: Image.asset(
                'assets/img_travel_location.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const LocationName(),
            const SizedBox(
              height: 26,
            ),
            const AboutThePlace(),
            const SizedBox(
              height: 26,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Booking Now',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(dates.length, ((index) {
                          return GestureDetector(
                            onTap: dates[index].available
                                ? () {
                                    debugPrint('tapped');
                                    setState(() {
                                      dates[index].isSelected =
                                          !dates[index].isSelected;

                                      if (dates[index].isSelected) {
                                        selectedDates.add(dates[index]);
                                      } else {
                                        selectedDates.remove(dates[index]);
                                      }

                                      totalPrice = selectedDates.fold(
                                          0,
                                          (previousValue, element) =>
                                              previousValue + element.price);
                                    });
                                  }
                                : null,
                            child: Date(
                              dateModel: dates[index],
                            ),
                          );
                        })),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(
                        text: totalPrice.toString() == '0.0'
                            ? '-'
                            : totalPrice.toString(),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: totalPrice.toString() == '0.0'
                              ? const Color(0xffBABAC8)
                              : const Color(0xff3F6DF6),
                        ),
                        children: [
                          TextSpan(
                            text: '\n/night',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: totalPrice.toString() == '0.0'
                                  ? const Color(0xffBABAC8)
                                  : const Color(0xff2F323A),
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 220,
                    height: 60,
                    child: TextButton(
                      onPressed: selectedDates.isEmpty ? null : () {},
                      style: TextButton.styleFrom(
                          backgroundColor: selectedDates.isEmpty
                              ? const Color(0xffF4F4F6)
                              : const Color(0xff3F6DF6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17))),
                      child: Text(
                        "Continue",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: selectedDates.isEmpty
                                ? const Color(0xffBABAC8)
                                : Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class LocationName extends StatelessWidget {
  const LocationName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Arrina La',
            style: GoogleFonts.poppins(
                fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Text(
            'Bali, Dekat Bandung',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class Date extends StatelessWidget {
  final DateModel dateModel;

  const Date({
    Key? key,
    required this.dateModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(right: 20),
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: dateModel.available ? Colors.white : const Color(0xffF4F4F6),
        borderRadius: const BorderRadius.all(Radius.circular(17)),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dateModel.day,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: dateModel.available
                          ? Colors.black
                          : const Color(0xffBABAC8)),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  dateModel.date,
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: const Color(0xffA8ACB6)),
                ),
              ],
            ),
          ),
          Visibility(
            visible: dateModel.isSelected,
            child: const SelectedIndicator(),
          )
        ],
      ),
    );
  }
}

class SelectedIndicator extends StatelessWidget {
  const SelectedIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Container(
        height: 25,
        width: 27,
        decoration: const BoxDecoration(
          color: Color(0xff3F6DF6),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(17),
              topRight: Radius.circular(100),
              bottomLeft: Radius.elliptical(100, 100),
              bottomRight: Radius.elliptical(100, 10)),
        ),
        child: Center(
          child: Image.asset(
            'assets/ic_selected.png',
            width: 16,
            height: 16,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}

class AboutThePlace extends StatelessWidget {
  const AboutThePlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Text(
            'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

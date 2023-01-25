import 'package:flutter/material.dart';

import '../widgets/theme.dart';

class SecondRating extends StatefulWidget {
  const SecondRating({super.key});

  @override
  State<SecondRating> createState() => _SecondRatingState();
}

class _SecondRatingState extends State<SecondRating> {
  int _rating = 0;

  @override
  void initState() {
    _rating = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = List.generate(5, (index) {
      return Icon(
        Icons.star,
        color: alabaster,
        size: 48.0,
      );
    });

    for (int i = 0; i < _rating; i++) {
      stars[i] = Icon(
        Icons.star,
        color: brightSun,
        size: 48.0,
      );
    }

    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img_office.png',
                  width: 295,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Enjoy Your Meal',
                  style: title3,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Please rate our experience',
                  style: subtitle3,
                ),
                const SizedBox(
                  height: 50,
                ),
                Stack(
                  children: [
                    SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: stars,
                        )),
                    Opacity(
                      opacity: 0,
                      child: Slider(
                        value: _rating.toDouble(),
                        min: 0,
                        max: 5,
                        divisions: 10,
                        onChanged: (value) {
                          setState(() {
                            _rating = value.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                TextFormField(
                  maxLines: 5,
                  style: msgText,
                  decoration: InputDecoration(
                      fillColor: alabaster,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Your review',
                      hintStyle: msgHintText),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: royalBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Submit Review",
                      style: rating1TextBtn,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

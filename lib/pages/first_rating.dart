import 'package:flutter/material.dart';

import '../widgets/theme.dart';

class FirstRating extends StatefulWidget {
  const FirstRating({super.key});

  @override
  State<FirstRating> createState() => _FirstRatingState();
}

class _FirstRatingState extends State<FirstRating> {
  int _selectedItem = 0;
  List<String> items = [
    'assets/worst.png',
    'assets/bad.png',
    'assets/good.png',
    'assets/lovely.png'
  ];

  @override
  void initState() {
    super.initState();
    _selectedItem = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mirage2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img_pizza.png',
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Pizza Balado',
                style: foodName,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Rp. 55.000',
                style: foodPrice,
              ),
              const SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Was it delicious?',
                  style: ratingPrompt,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(items.length, (index) {
                    return RatingItem1(
                      imageUri: items[index],
                      selected: index == _selectedItem,
                      onTap: () {
                        setState(() {
                          _selectedItem = index;
                        });
                      },
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 67, vertical: 16),
                    backgroundColor: shamrock,
                    shape: const StadiumBorder()),
                child: Text(
                  "Rate Now",
                  style: rating1TextBtn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RatingItem1 extends StatelessWidget {
  final String imageUri;
  final bool selected;
  final Function onTap;

  const RatingItem1({
    Key? key,
    required this.imageUri,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: TextButton(
        onPressed: () {
          debugPrint('onTap');
          onTap();
        },
        style: TextButton.styleFrom(
            backgroundColor: selected ? titanWhite : brightGray,
            shape: const CircleBorder()),
        child: Image.asset(
          imageUri,
          width: 28,
        ),
      ),
    );
  }
}

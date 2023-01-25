import 'package:flutter/material.dart';
import 'package:flutter_sevendays_ui/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter UI Challenge',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'This is my implementation of Flutter UI Challenge Masterclass from BuildWithAngga',
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: List.generate(
                routeNames.length,
                (index) => ScreenItem(
                  imageUri: imagrURIs[index],
                  title:  titles[index],
                  action: () {
                    Navigator.pushNamed(context, routeNames[index]);
                  },
                ),
              ),
            ))
          ],
        ),
      ),
    ));
  }
}

class ScreenItem extends StatelessWidget {
  final String imageUri;
  final String title;
  final VoidCallback action;
  const ScreenItem({
    Key? key,
    required this.imageUri,
    required this.title,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUri),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    colorFilter: const ColorFilter.mode(
                        Colors.black54, BlendMode.darken),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(17)),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

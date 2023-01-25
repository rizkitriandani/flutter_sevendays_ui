import 'package:flutter/material.dart';

import '../widgets/theme.dart';

class FirstEmptyScreen extends StatelessWidget {
  const FirstEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: alabaster,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 66),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img_es1.png',
              width: 240,
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              'Success Order',
              style: title1,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'We will deliver your package as soon as possible',
              style: subTitle1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 200,
              height: 55,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: violetRed,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17))),
                child: Text(
                  "Done",
                  style: textBtn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

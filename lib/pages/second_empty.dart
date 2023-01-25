import 'package:flutter/material.dart';
import 'package:flutter_sevendays_ui/widgets/theme.dart';

class SecondEmptyScreen extends StatelessWidget {
  const SecondEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mirage,
        body: Column(
          children: [
            Image.asset('assets/img_es2.png'),
            const SizedBox(
              height: 68,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 67),
              child: Column(
                children: [
                  Text(
                    'Boost Profit!',
                    style: title2,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Our tools are helping business to grow much faster',
                    style: subTitle2,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 59,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(17),
                        backgroundColor: chetwodeBlue,
                        shape: const StadiumBorder()),
                    child: Image.asset(
                      'assets/ic_rocket.png',
                      width: 32,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_website/constants.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.5,
                'https://assets6.lottiefiles.com/packages/lf20_bhw1ul4g.json'),
            const Text(
              'This website is optimized for larger screens. To get the full experience, try viewing it on a tablet or desktop.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontFamily: 'Inter',
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../constants.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1,
                horizontal: 30),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '<Transform>',
                        style: TextStyle(
                          fontFamily: 'KyivType Sans',
                          color: pinkColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 72,
                        ),
                      ),
                      TextSpan(
                        text: ' your vision to reality',
                        style: TextStyle(
                          fontFamily: 'KyivType Sans',
                          color: whiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 72,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Why squander time and money on developers who aren`t perfect for your startup? Congrats you landed on the right page.',
                  style: TextStyle(
                    color: whiteColor,
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 2,
                      color: blueColor,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Get registered now',
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: Image.asset('assets/images/upwork.png'),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: Image.asset(
                        'assets/images/fiverr.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: Image.asset(
                        'assets/images/linkedin.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // image part
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              children: [
                // The Rive animation
                const RiveAnimation.asset(
                  "assets/animation/back_image_animation.riv",
                ),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/home-page-image.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_website/Components/DesktopView/Services.dart';
import 'package:portfolio_website/constants.dart';
import 'package:rive/rive.dart';

import '../../Components/DesktopView/LandingScreen.dart';
import '../../Components/DesktopView/Navbar.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Navbar(),
          ),
          const SizedBox(height: 50),
          const LandingScreen(),
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Services',
              style: TextStyle(
                fontFamily: 'KyivType Sans',
                color: whiteColor,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: Stack(
              children: [
                // back
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: const RiveAnimation.asset(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      'assets/animation/services_screen_animation.riv'),
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

                // front
                Services(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_website/Screens/DesktopView/DesktopHomeScreen.dart';
import 'package:portfolio_website/Screens/MobileView/MobileHomeScreen.dart';
import 'package:portfolio_website/Screens/TabletView/TabletHomeScreen.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileHomeScreen();
        } else if (constraints.maxWidth < 1100) {
          return const TabletHomeScreen();
        } else {
          return const DesktopHomeScreen();
        }
      },
    );
  }
}

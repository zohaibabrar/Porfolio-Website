import 'package:flutter/material.dart';

class HomeScreenImage extends StatelessWidget {
  const HomeScreenImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.04,
        height: MediaQuery.of(context).size.height * 0.5,
        child: TweenAnimationBuilder(
          tween: Tween<double>(
              begin: 0, end: MediaQuery.of(context).size.width * 0.3),
          duration: const Duration(seconds: 1),
          builder: (context, margin, child) => Container(
            margin: EdgeInsets.only(left: margin),
            child: Image.asset(
              'assets/images/home-page-image.png',
            ),
          ),
        ),
      ),
    );
  }
}

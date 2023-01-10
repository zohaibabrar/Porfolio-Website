import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreenCaption extends StatelessWidget {
  const HomeScreenCaption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Why squander time and money on developers who aren`t perfect for your startup? Congrats you landed on the right place.',
      style: TextStyle(
        color: whiteColor,
        fontSize: 20,
        fontFamily: 'Intel',
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreenHeading extends StatelessWidget {
  const HomeScreenHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: '<Transform>',
            style: TextStyle(
              fontFamily: 'KyivType Sans',
              color: pinkColor,
              fontWeight: FontWeight.w700,
              fontSize: 60,
            ),
          ),
          TextSpan(
            text: ' your vision to reality',
            style: TextStyle(
              fontFamily: 'KyivType Sans',
              color: whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 60,
            ),
          ),
        ],
      ),
    );
  }
}

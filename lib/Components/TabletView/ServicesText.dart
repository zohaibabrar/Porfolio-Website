import 'package:flutter/material.dart';

import '../../constants.dart';

class ServicesText extends StatelessWidget {
  const ServicesText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Services',
      style: TextStyle(
        color: whiteColor,
        fontFamily: 'KyivType Sans',
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}

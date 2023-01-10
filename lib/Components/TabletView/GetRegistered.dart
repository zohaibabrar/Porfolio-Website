import 'package:flutter/material.dart';

import '../../constants.dart';

class GetRegistered extends StatelessWidget {
  const GetRegistered({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 2,
          height: 24,
          color: blueColor,
        ),
        const SizedBox(width: 10),
        const Text(
          'Get registered now',
          style: TextStyle(
            fontFamily: 'Intel',
            color: blueColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 100),
        Container(
          width: 116,
          height: 56,
          decoration: BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              'Contact',
              style: TextStyle(
                color: whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Intel',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

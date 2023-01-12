import 'package:flutter/material.dart';

import '../../constants.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/navbar-icon.png'),
        Row(
          children: const [
            Text(
              'Services',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: whiteColor,
              ),
            ),
            SizedBox(width: 50),
            Text(
              'About Me',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: whiteColor,
              ),
            ),
            SizedBox(width: 50),
            Text(
              'Projects',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: whiteColor,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: blueColor,
            ),
          ),
          child: const Center(
            child: Text(
              'Contact',
              style: TextStyle(
                color: blueColor,
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

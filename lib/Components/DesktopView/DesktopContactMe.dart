import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class DesktopContaceMe extends StatelessWidget {
  const DesktopContaceMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(52, 199, 255, 1),
              Color.fromRGBO(254, 17, 126, 1),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.3,
              horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Thanks for Scrolling',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 80),
              Text(
                'Got similiar projects to work on? \nDrop me a line',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'KyivType Sans',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 100),
              Text(
                'Instagram: zohaib.abrar_\n',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'Email: abrarzohaib@gmail.com\n',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'LinkedIn: in/zohaib-abrar-7561241a9\n',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'Upwork: Zohaib A.\n',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constants.dart';

class Services extends StatefulWidget {
  final String serviceTitle,
      firstServicePoint,
      secondServicePoint,
      thirdServicePoint,
      serviceImage;
  const Services({
    Key? key,
    required this.serviceTitle,
    required this.firstServicePoint,
    required this.secondServicePoint,
    required this.thirdServicePoint,
    required this.serviceImage,
  }) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.07),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(34, 36, 47, 0.67),
                Color.fromRGBO(15, 15, 15, 0),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.serviceTitle,
                        style: const TextStyle(
                          fontFamily: 'KyivType Sans',
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        widget.firstServicePoint,
                        style: const TextStyle(
                          color: whiteColor,
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        widget.secondServicePoint,
                        style: const TextStyle(
                          color: whiteColor,
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        widget.thirdServicePoint,
                        style: const TextStyle(
                          color: whiteColor,
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Center(
                    child: Image.asset(
                      fit: BoxFit.cover,
                      widget.serviceImage,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

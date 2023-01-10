import 'package:flutter/material.dart';

import '../../constants.dart';

class FullAppDevelopment extends StatefulWidget {
  final String serviceTitle,
      serviceFirstPoint,
      serviceSecondPoint,
      serviceThirdPoint,
      serviceImage;
  const FullAppDevelopment({
    Key? key,
    required this.serviceTitle,
    required this.serviceFirstPoint,
    required this.serviceSecondPoint,
    required this.serviceThirdPoint,
    required this.serviceImage,
  }) : super(key: key);

  @override
  State<FullAppDevelopment> createState() => _FullAppDevelopmentState();
}

class _FullAppDevelopmentState extends State<FullAppDevelopment> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color.fromRGBO(34, 36, 47, 0.67),
              Color.fromRGBO(15, 15, 15, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.serviceTitle,
                style: const TextStyle(
                  fontFamily: 'KyivType Sans',
                  color: whiteColor,
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 100),
              Text(
                widget.serviceFirstPoint,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                widget.serviceSecondPoint,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                widget.serviceThirdPoint,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.5),
                width: MediaQuery.of(context).size.width * 0.4,
                child: Image.asset(
                  widget.serviceImage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

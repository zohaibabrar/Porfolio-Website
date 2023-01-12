import 'package:flutter/material.dart';

import '../../constants.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(34, 36, 48, 0.67),
                Color.fromRGBO(15, 15, 15, 0),
              ],
            ),
          ),
          child: Row(
            children: [
              // content part
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Full App Development',
                        style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'KyivType Sans',
                          fontSize: 48,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Define the scope and goals of the app',
                        style: TextStyle(
                          color: whiteColor,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Create a plan for the app`s architecture and features',
                        style: TextStyle(
                          color: whiteColor,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Test the app thoroughly to ensure it works as expected and handles edge cases gracefully',
                        style: TextStyle(
                          color: whiteColor,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),

              // image part
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.54,
                child: Center(
                  child: Image.asset(
                    'assets/images/full-app-development.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

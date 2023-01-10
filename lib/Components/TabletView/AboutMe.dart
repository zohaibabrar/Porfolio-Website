import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class TabletAboutMe extends StatelessWidget {
  const TabletAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width * 0.55,
          child: Column(
            children: [
              const Text(
                'Hello and welcome to my portfolio! My name is Zohaib and I am a Flutter developer with a passion for creating beautiful, intuitive, and functional mobile apps. With strong foundation in programming principles and a keen eye for design, I have a track record of delivering high-quality apps on time and withing budget. Whether it`s developing custom widgets, integrating with APIs, or fixing bugs, I have the skills and experience to tackle any challenge.',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'Intel',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              '10+',
                              style: TextStyle(
                                fontFamily: 'KyivType Sans',
                                color: pinkColor,
                                fontSize: 52,
                                fontWeight: FontWeight.w700,
                                shadows: [
                                  Shadow(
                                    color: Color.fromRGBO(254, 17, 126, 1),
                                    blurRadius: 27.6,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Projects',
                              style: TextStyle(
                                color: Color.fromRGBO(132, 132, 137, 1),
                                fontSize: 26,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        Container(
                          width: 2,
                          height: double.infinity,
                          color: pinkColor,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        Column(
                          children: const [
                            Text(
                              '5+',
                              style: TextStyle(
                                fontFamily: 'KyivType Sans',
                                color: pinkColor,
                                fontSize: 52,
                                fontWeight: FontWeight.w700,
                                shadows: [
                                  Shadow(
                                    color: Color.fromRGBO(254, 17, 126, 1),
                                    blurRadius: 27.6,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Clients',
                              style: TextStyle(
                                color: Color.fromRGBO(132, 132, 137, 1),
                                fontSize: 26,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Image.asset('assets/images/personal-photo.png'),
        ),
      ],
    );
  }
}

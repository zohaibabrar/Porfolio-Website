import 'package:flutter/material.dart';

import '../../constants.dart';

class DesktopAboutMe extends StatelessWidget {
  const DesktopAboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Something you must know About me',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 48,
                      fontFamily: 'KyivType Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Hello & welcome to my portfolio! My name is Zohaib & I am a Flutter developer with a passion for creating beautiful, intuitive, and functional mobile apps. With strong foundation in programming principles & a keen eye for design, I have a track record of delivering high-quality apps on time and within budget. Whether it`s developing custom widgets, integrating with APIs, or fixing bugs, I have the skills and experience to tackle any challenge.',
                    style: TextStyle(
                      fontSize: 16,
                      color: whiteColor,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.09,
                        child: Column(
                          children: const [
                            Text(
                              '10+',
                              style: TextStyle(
                                fontFamily: 'KyivType Sans',
                                fontSize: 40,
                                color: pinkColor,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Color.fromRGBO(254, 17, 126, 1),
                                    blurRadius: 27.6,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Projects',
                              style: TextStyle(
                                color: Color.fromRGBO(132, 132, 137, 1),
                                fontSize: 26,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: pinkColor,
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.09,
                        child: Column(
                          children: const [
                            Text(
                              '5+',
                              style: TextStyle(
                                fontFamily: 'KyivType Sans',
                                fontSize: 40,
                                color: pinkColor,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Color.fromRGBO(254, 17, 126, 1),
                                    blurRadius: 27.6,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Clients',
                              style: TextStyle(
                                color: Color.fromRGBO(132, 132, 137, 1),
                                fontSize: 26,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Center(
                child: Image.asset(
                  'assets/images/personal-photo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

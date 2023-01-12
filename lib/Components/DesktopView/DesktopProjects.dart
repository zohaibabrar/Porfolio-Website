import 'package:flutter/material.dart';

import '../../constants.dart';

class DesktopProjects extends StatefulWidget {
  final String projectTitle, projectDescription, projectImage;
  const DesktopProjects({
    Key? key,
    required this.projectTitle,
    required this.projectDescription,
    required this.projectImage,
  }) : super(key: key);

  @override
  State<DesktopProjects> createState() => _DesktopProjectsState();
}

class _DesktopProjectsState extends State<DesktopProjects> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Details Part
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                children: [
                  // Heading
                  Row(
                    children: [
                      Container(
                        width: 5,
                        height: MediaQuery.of(context).size.height * 0.08,
                        color: pinkColor,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        widget.projectTitle,
                        style: const TextStyle(
                          fontFamily: 'KyivType Sans',
                          fontSize: 44,
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Description
                  const SizedBox(height: 30),
                  Text(
                    widget.projectDescription,
                    style: const TextStyle(
                      color: whiteColor,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            // Image Part
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Center(
                child: Image.asset(
                  widget.projectImage,
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

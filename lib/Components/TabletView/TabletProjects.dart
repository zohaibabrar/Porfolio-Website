import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class TabletProjects extends StatefulWidget {
  final String projectTitle, projectDescription, projectImage;
  const TabletProjects(
      {super.key,
      required this.projectTitle,
      required this.projectDescription,
      required this.projectImage});

  @override
  State<TabletProjects> createState() => _TabletProjectsState();
}

class _TabletProjectsState extends State<TabletProjects> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.38,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 5,
                      height: MediaQuery.of(context).size.height * 0.05,
                      color: pinkColor,
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        widget.projectTitle,
                        style: const TextStyle(
                          color: whiteColor,
                          fontFamily: 'KyivType Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  widget.projectDescription,
                  style: const TextStyle(
                    color: whiteColor,
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.52,
            child: Image.asset(widget.projectImage),
          ),
        ],
      ),
    );
  }
}

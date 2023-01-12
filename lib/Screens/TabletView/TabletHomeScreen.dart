import 'package:flutter/material.dart';
import 'package:portfolio_website/Components/TabletView/AboutMe.dart';
import 'package:portfolio_website/Components/TabletView/TabletContactMe.dart';
import 'package:portfolio_website/Components/TabletView/TabletProjects.dart';
import 'package:portfolio_website/constants.dart';
import '../../Components/TabletView/FullAppDevelopment.dart';
import '../../Components/TabletView/GetRegistered.dart';
import '../../Components/TabletView/HomeScreenCaption.dart';
import '../../Components/TabletView/HomeScreenHeading.dart';
import '../../Components/TabletView/HomeScreenImage.dart';
import '../../Components/TabletView/ServicesText.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          fit: BoxFit.cover,
          'assets/images/navbar-icon.png',
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'About Me',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Intel',
                ),
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.black45,
              ),
              Text(
                'Services',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Intel',
                ),
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.black45,
              ),
              Text(
                'Projects',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Intel',
                ),
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.black45,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: HomeScreenHeading(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: HomeScreenCaption(),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: GetRegistered(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: HomeScreenImage(),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ServicesText(),
          ),
          SizedBox(height: 200),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: FullAppDevelopment(
              serviceTitle: 'Full App Development',
              serviceFirstPoint: 'Define the scope and goals of the app',
              serviceSecondPoint:
                  'Create a plan for the app`s architecture and features',
              serviceThirdPoint:
                  'Test the app thoroughly to ensure it works as expected and handles edge cases gracefully',
              serviceImage: 'assets/images/full-app-development.png',
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: FullAppDevelopment(
              serviceTitle: 'Bug Fixing',
              serviceFirstPoint:
                  'Identify the symptoms of the bug and reproduce the issue to understand the cause',
              serviceSecondPoint:
                  'Use debugging tools, such as print statements, debuggers \nand loggers, to gather more information about the bug',
              serviceThirdPoint:
                  'Analyze the root cause of the bug and develop a plan to fix it',
              serviceImage: 'assets/images/bug-fixing.png',
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: FullAppDevelopment(
              serviceTitle: 'Custom Widgets',
              serviceFirstPoint:
                  'Use custom widgets to reuse code, encapsulate complex layouts \nand create more mantainable and scalable apps',
              serviceSecondPoint:
                  'Customize widgets through constuctor arguments and methods to make them flexible and reusable.',
              serviceThirdPoint:
                  'Test custom widgets thoroughly to ensure they behave as expected and handle edge cases gracefully.',
              serviceImage: 'assets/images/phone-customization.png',
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: FullAppDevelopment(
              serviceTitle: 'API Integration',
              serviceFirstPoint:
                  'Understand the requirements and capabilities of the API you want to integrate with',
              serviceSecondPoint:
                  'Read the API`s documentation to understand how to make requests and process responses',
              serviceThirdPoint:
                  'Integrate the API into your app by making requests and handling responses using an \nHTTP library or the platform`s native networking tools.',
              serviceImage: 'assets/images/api-integration.png',
            ),
          ),
          SizedBox(height: 200),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Something you must know About Me',
              style: TextStyle(
                color: whiteColor,
                fontFamily: 'KyivType Sans',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TabletAboutMe(),
          ),
          SizedBox(height: 200),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'My Stunning Projects',
              style: TextStyle(
                color: whiteColor,
                fontFamily: 'KyivType Sans',
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TabletProjects(
              projectTitle: 'Fitness App',
              projectDescription:
                  'Our fitness app is designed to help users achieve their health and fitness goals through personalized workouts and meal plans. With a user-friendly interface and a wide range of exercises and workouts to choose from, our app makes it easy for users to get fit and stay active. In addition to providing workouts, our app also includes a comprehensive nutrition tracker that helps users keep track of their daily caloric intake and make informed decisions about their diet. Whether you`re a beginner looking to get started on your fitness journey or an experienced athlete looking to take your training to the next level, our app has something for everyone.',
              projectImage: 'assets/images/fitness-app.png',
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TabletProjects(
              projectTitle: 'Stock\nManagement App',
              projectDescription:
                  'Our stock management app is the perfect tool for business looking to streamline their inventory management process. With real-time updates on stock levels, automatic reorder alerts, and detailed reporting, our app makes it easy to keep track of your inventory and ensure you always have the products your customers need. In addition to helping you manage your stock, our app also includes powerful forecasting tools that allow you to plan for future demand and make informed decisions about your inventory. Whether you`re a small business owner or a large corporation, our app has everything you need to efficiently manage your stock and grow your business.',
              projectImage: 'assets/images/stock-management-app.png',
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TabletProjects(
              projectTitle: 'Bionic Glove App',
              projectDescription:
                  'Our bionic glove app is designed to help users with hand impairments regain mobility and independence. By using advanced robotics and sensors technology, our bionic glove allows users to perform a wide range of tasks and movements with ease. With a user-friendly interface and intuituve controls, our app makes it easy for users to customize the functionality of their bionic glove and make it work for their specific needs. Whether you`re looking to regain the ability to grip objects, open doors, or perform other tasks our bionic glove app can help you achieve your goals. Try it out today and see how it can transform your life!',
              projectImage: 'assets/images/bionic-glove.png',
            ),
          ),
          TabletContactMe(),
        ],
      ),
    );
  }
}

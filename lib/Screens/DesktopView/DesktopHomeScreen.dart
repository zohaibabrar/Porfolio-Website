import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio_website/Components/DesktopView/Services.dart';
import 'package:portfolio_website/constants.dart';
import 'package:rive/rive.dart';
import '../../Components/DesktopView/DesktopAboutMe.dart';
import '../../Components/DesktopView/DesktopContactMe.dart';
import '../../Components/DesktopView/DesktopProjects.dart';
import '../../Components/DesktopView/LandingScreen.dart';
import '../../Components/DesktopView/Navbar.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Navbar(),
          ),
          const SizedBox(height: 50),
          const LandingScreen(),
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Services',
              style: TextStyle(
                fontFamily: 'KyivType Sans',
                color: whiteColor,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(
              children: [
                const RiveAnimation.asset(
                    'assets/animation/services_screen_animation.riv'),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
                const Services(
                  serviceTitle: 'Full App Development',
                  firstServicePoint: 'Define the scope and goals of the app',
                  secondServicePoint:
                      'Create a plan for the app`s architecture and features',
                  thirdServicePoint:
                      'Test the app thoroughly to ensure it works as expected and handles edge cases gracefully',
                  serviceImage: 'assets/images/full-app-development.png',
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Services(
            serviceTitle: 'Bug Fixing',
            firstServicePoint:
                'Identify the symptoms of the bug and reproduce the issue to understand the cause',
            secondServicePoint:
                'Use debugging tools, such as print statements, debuggers and loggers, to gather more information about the bug',
            thirdServicePoint:
                'Analyze the root cause of the bug and develop a plan to fix it',
            serviceImage: 'assets/images/bug-fixing.png',
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(
              children: [
                const RiveAnimation.asset(
                    'assets/animation/custom_widgets_animation.riv'),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
                const Services(
                  serviceTitle: 'Custom Widgets',
                  firstServicePoint:
                      'Use custom widgets to reuse code, encapsulate complex layouts and create more mantainable and scalable apps',
                  secondServicePoint:
                      'Customize widgets through constructor arguments and methods to make them flexible and reusable',
                  thirdServicePoint:
                      'Test custom widgets thoroughly to ensure they behave as expected and handle edge cases gracefully',
                  serviceImage: 'assets/images/phone-customization.png',
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(
              children: [
                const RiveAnimation.asset(
                    'assets/animation/api_integration_animation.riv'),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
                const Services(
                  serviceTitle: 'API Integration',
                  firstServicePoint:
                      'Understand the requirements and capabilities of the API you want to integrate with',
                  secondServicePoint:
                      'Read the API`s documentation to understand how to make requests and process responses',
                  thirdServicePoint:
                      'Integrate the API into your app by making requests and handling responses using an HTTP library or the platform`s native networking tools',
                  serviceImage: 'assets/images/api-integration.png',
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          const DesktopAboutMe(),
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'My Stunning Projects',
              style: TextStyle(
                fontFamily: 'KyivType Sans',
                color: whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
          ),
          const SizedBox(height: 50),
          const DesktopProjects(
            projectTitle: 'Fitness App',
            projectDescription:
                'Our fitness app is designed to help users achieve their health and fitness goals through personalized workouts and meal plans. With a user-friendly interface and a wide range of exercises and workouts to choose from, our app makes it easy for users to get fit and stay active. In addition to providing workouts, out app also includes a comprehensive nutrition tracker that helps users keep track of their daily caloric intake and make informed decisions about their diet. Whether you`re a journey or an experienced athlete looking to take your training to the next level, our app has something for everyone.',
            projectImage: 'assets/images/fitness-app.png',
          ),
          const SizedBox(height: 60),
          const DesktopProjects(
            projectTitle: 'Stock\nManagement App',
            projectDescription:
                'Our stock management app is the perfect tool for business looking to streamline their inventory management process. With real-time updates on stock levels, automatic reorder alerts, and detailed reporting, our app makes it easy to keep track of your inventory and ensure you always have the products of your customer need. In addition to helping you manage your stock, our app also includes powerful forecasting tools that allow you to plan for future demand and make informed decisions about your inventory. Whether you`re a small business owner or a large corporation, our app has everything you need to efficiently manage your stock and grow your business.',
            projectImage: 'assets/images/stock-management-app.png',
          ),
          const SizedBox(height: 60),
          const DesktopProjects(
            projectTitle: 'Bionic Glove App',
            projectDescription:
                'Our bionic glove app is designed to help users with hand impairments regain mobility and independence.By using advanced robotics and sensors technology, our bionic glove allows users to perform a wide range of tasks and movements with ease. With a user-friendly interface and intuitive controls, our app makes it easy for users to customize the functionality of their bionic glove and make it work for their specific needs. Whether you`re looking to regain the ability to grip objects, open doors, or perform other tasks our bionic glove app can help you achieve your goals. Try it out today and see how it can transform your life!',
            projectImage: 'assets/images/bionic-glove.png',
          ),
          const DesktopContaceMe(),
        ],
      ),
    );
  }
}

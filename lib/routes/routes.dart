import 'package:flutter/material.dart';
import 'package:nexah/screens/bottom_navigation/bottom_navigation.dart';
import 'package:nexah/screens/authentication_screens/login.dart';
import 'package:nexah/screens/authentication_screens/sign_up.dart';
import 'package:nexah/screens/authentication_screens/welcome_page.dart';
import 'package:nexah/screens/bottom_navigation/home.dart';
import 'package:nexah/screens/bottom_navigation/lighting.dart';
import 'package:nexah/screens/bottom_navigation/profile.dart';
import 'package:nexah/screens/bottom_navigation/statistics.dart';
import 'package:nexah/screens/bottom_navigation/timer.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case WelcomePage.iD:
        return MaterialPageRoute(builder: (context) {
          return const WelcomePage();
        });
      case SignUpScreen.iD:
        return MaterialPageRoute(builder: (context) {
          return const SignUpScreen();
        });
      case LoginScreen.iD:
        return MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        });
      case BottomNavigation.iD:
        return MaterialPageRoute(builder: (context) {
          return const BottomNavigation();
        });
      case HomeScreen.iD:
        return MaterialPageRoute(builder: (context) {
          return const HomeScreen();
        });
      case LightingScreen.iD:
        return MaterialPageRoute(builder: (context) {
          return const LightingScreen();
        });
      case ProfileScreen.iD:
        return MaterialPageRoute(builder: (context) {
          return const ProfileScreen();
        });
      case StatisticsScreen.iD:
        return MaterialPageRoute(builder: (context) {
          return const StatisticsScreen();
        });
      case TimerScreen.iD:
        return MaterialPageRoute(builder: (context) {
          return const TimerScreen();
        });
      default:
        return MaterialPageRoute(builder: (context) {
          return const Text("You should probably not be passing null");
        });
    }
  }
}
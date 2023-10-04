import 'package:expense_management_app/errors/page_not_found.dart';
import 'package:expense_management_app/pages/home/homepage.dart';
import 'package:expense_management_app/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const String initialRoute = "/";
  static const String homepageRoute = "/home";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        );

      case homepageRoute:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const PageNotFound(),
        );
    }
  }
}

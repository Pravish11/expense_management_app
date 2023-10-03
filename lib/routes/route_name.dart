import 'package:expense_management_app/errors/page_not_found.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const String initialRoute = "/";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (context) => const PageNotFound(),);;

      default:
        return MaterialPageRoute(builder: (context) => const PageNotFound(),);
    }
  }
}

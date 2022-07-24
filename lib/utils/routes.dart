import 'package:flutter/material.dart';
import '../errors/exceptions.dart';
import '../pages/home_page.dart';

class RouteGenerator {
  static const String home = 'home';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        throw RouteException('Route not found');
    }
  }
}

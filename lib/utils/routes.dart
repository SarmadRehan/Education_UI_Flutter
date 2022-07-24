import 'package:education/pages/favorite_course.dart';
import 'package:flutter/material.dart';
import '../errors/exceptions.dart';
import '../pages/home_page.dart';

class RouteGenerator {
  static const String home = 'home';
  static const String favoriteCourse = 'favoriteCourse';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case favoriteCourse:
        return MaterialPageRoute(builder: (_) => FavoriteCourse());
      default:
        throw RouteException('Route not found');
    }
  }
}

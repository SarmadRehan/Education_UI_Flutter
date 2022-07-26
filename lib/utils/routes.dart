import 'package:education/pages/course_details.dart';
import 'package:education/pages/favorite_course.dart';
import 'package:education/pages/mentor_detail_page.dart';
import 'package:flutter/material.dart';
import '../errors/exceptions.dart';
import '../pages/home_page.dart';
import '../pages/mentor_page.dart';

class RouteGenerator {
  static const String home = 'home';
  static const String favoriteCourse = 'favoriteCourse';
  static const String courseDetails = 'courseDetails';
  static const String mentor = 'mentor';
  static const String mentorDetails = 'mentorDetails';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case favoriteCourse:
        return MaterialPageRoute(builder: (_) => FavoriteCourse());
      case courseDetails:
        return MaterialPageRoute(builder: (_) => CourseDetails());
      case mentor:
        return MaterialPageRoute(builder: (_) => Mentor());
      case mentorDetails:
        return MaterialPageRoute(builder: (_) => MentorDetail());
      default:
        throw RouteException('Route not found');
    }
  }
}

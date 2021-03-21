import 'package:aluth_class/ui/student/exam.dart';
import 'package:aluth_class/ui/student/home.dart';
import 'package:aluth_class/ui/student/subjects.dart';
import 'package:aluth_class/ui/student/tutor_profile.dart';
import 'package:aluth_class/ui/student/tutor_list.dart';
import 'package:aluth_class/ui/tutor/profile.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed

    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/exam':
        return MaterialPageRoute(
          builder: (_) => Exam(),
        );
      case '/subjects':
        return MaterialPageRoute(
          builder: (_) => Subjects(),
        );
      case '/tutor-list':
        return MaterialPageRoute(
          builder: (_) => TutorList(),
        );
      case '/tutor':
        return MaterialPageRoute(
          builder: (_) => Tutor(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => Profile(),
        );
      default:
        // If there is no such named route in the switch statement,
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

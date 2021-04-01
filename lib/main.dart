import 'dart:io';

import 'package:aluth_class/services/routeGenerator.dart';
import 'package:aluth_class/ui/register/login.dart';
import 'package:aluth_class/ui/student/tutor_profile.dart';
import 'package:flutter/material.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AluthClass.com',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

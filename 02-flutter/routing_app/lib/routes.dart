import 'package:flutter/material.dart';
import 'package:routing_app/routes/home_page.dart';
import 'package:routing_app/routes/random_page.dart';

class RouteGenerator {
  static const String homePage = "/";
  static const String randomPage = "/random";

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case randomPage:
        return MaterialPageRoute(builder: (_) => const RandomPage());
      default:
        throw const FormatException("Route not found");
    }
  }
}

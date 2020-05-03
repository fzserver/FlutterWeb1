import 'package:flutter/material.dart';
import 'package:flutterweb/screens/home/home.dart';
import 'package:flutterweb/screens/login/login.dart';
import 'package:flutterweb/screens/login/login2.dart';

class Routes {
  /// Defining the routes
  static String initial = login;
  static const String home = '/';
  static const String login = '/login';

  /// Setting the routes screens
  static Map<String, Widget Function(BuildContext)> routes() => {
        home: (ctx) => Home(),
        login: (ctx) => LoginPage(),
      };
}

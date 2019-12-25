import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterspacex/constants/route_paths.dart';
import 'package:flutterspacex/ui/views/bottom_navigation/bottom_navigation_view.dart';
import 'package:flutterspacex/ui/views/splash/splash_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.HOME:
        return MaterialPageRoute(builder: (BuildContext context) => BottomNavigationView());
      case RoutePaths.SPLASH:
        return MaterialPageRoute(builder: (BuildContext context) => SplashView());
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}

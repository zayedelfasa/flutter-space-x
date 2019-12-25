import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterspacex/constants/route_paths.dart';
import '../../shared/app_colors.dart' as app_color;

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() async {
    Navigator.pushReplacementNamed(context, RoutePaths.HOME);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: app_color.backgroundApp,
        body: Container());
  }
}

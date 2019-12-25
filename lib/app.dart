import 'package:flutter/material.dart';
import 'package:flutterspacex/constants/route_paths.dart';
import 'package:flutterspacex/provider_setup.dart' as prefix0;
import 'package:flutterspacex/ui/views/router.dart';
import 'package:provider/provider.dart';
import './ui/shared/app_colors.dart' as app_color;

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: prefix0.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Space X",
        theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: app_color.textDefaultWhite,
              iconTheme: IconThemeData(color: app_color.backgroundApp),
            )),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: RoutePaths.SPLASH,
        onGenerateRoute: Router.generateRoute,

      ),
    );
  }
}

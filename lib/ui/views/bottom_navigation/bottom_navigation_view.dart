import 'package:flutter/material.dart';
import 'package:flutterspacex/ui/views/latest_launch/latest_launch_view.dart';
import 'package:flutterspacex/ui/views/next_launch/next_launch_view.dart';
import 'package:flutterspacex/ui/views/rockets/rockets_view.dart';
import 'package:flutterspacex/ui/views/upcomming_launch/upcomming_launch_view.dart';
import '../../shared/text_styles.dart' as textStyle;

class BottomNavigationView extends StatefulWidget {
  @override
  _BottomNavigationViewState createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int tabNow = 0;
  final List<Widget> _children = [
    NextLaunch(),
    Rockets(),
    UpcommingLaunch(),
    LatestLaunch(),
    Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.near_me), Text("About Apps")],
        ),
      ),
    ),
  ];

  List<BottomNavigationBarItem> _buildNavigationItems() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          title: Text(
            'LAUNCH',
            style: textStyle.normalFont10,
          ),
          icon: Icon(
            Icons.home,
            size: 20,
          )),
      BottomNavigationBarItem(
          title: Text(
            'ROCKETS',
            style: textStyle.normalFont10,
          ),
          icon: Icon(
            Icons.airline_seat_legroom_reduced,
            size: 20,
          )),
      BottomNavigationBarItem(
          title: Text(
            'UPCOMING',
            style: textStyle.normalFont10,
          ),
          icon: Icon(
            Icons.near_me,
            size: 20,
          )),
      BottomNavigationBarItem(
          title: Text(
            'LATEST',
            style: textStyle.normalFont10,
          ),
          icon: Icon(
            Icons.threesixty,
            size: 20,
          )),
      BottomNavigationBarItem(
          title: Text(
            'ABOUT APPS',
            style: textStyle.normalFont10,
          ),
          icon: Icon(
            Icons.edit_location,
            size: 20,
          )),
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _children[tabNow],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true, // <-- HERE
        showUnselectedLabels: true,
        elevation: 0,
        selectedItemColor: Colors.amberAccent,
        items: _buildNavigationItems(),
        currentIndex: tabNow,
        selectedFontSize : 12.0,
        unselectedFontSize : 12.0,
        onTap: (val) {
          switch (val) {
            case 0:
              setState(() {
                tabNow = val;
              });
              break;
            case 1:
              setState(() {
                tabNow = val;
              });
              break;
            case 2:
              setState(() {
                tabNow = val;
              });
              break;
            case 3:
              setState(() {
                tabNow = val;
              });
              break;
            case 4:
              setState(() {
                tabNow = val;
              });
              break;
          }
        },
      ),
    );
  }
}

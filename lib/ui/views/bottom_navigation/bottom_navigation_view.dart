import 'package:flutter/material.dart';
import 'package:flutterspacex/ui/views/next_launch/next_launch_view.dart';
import '../../shared/text_styles.dart' as textStyle;

class BottomNavigationView extends StatefulWidget {
  @override
  _BottomNavigationViewState createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int tabNow = 0;
  final List<Widget> _children = [
    NextLaunch(),
    Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.favorite), Text("This is Favorites")],
        ),
      ),
    ),
    Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.near_me), Text("This is Near me")],
        ),
      ),
    ),
    Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.near_me), Text("This is Near me")],
        ),
      ),
    ),
    Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.near_me), Text("This is Near me")],
        ),
      ),
    ),
  ];

  List<BottomNavigationBarItem> _buildNavigationItems() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          title: Text(
            'HOME',
            style: textStyle.normalFont10,
          ),
          icon: Icon(
            Icons.home,
            size: 20,
          )),
      BottomNavigationBarItem(
          title: Text(
            'VEHICLE',
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
            'COMPANY',
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

import 'package:flutter/material.dart';
import '../../shared/text_styles.dart' as textStyle;

class UpcommingLaunch extends StatefulWidget {
  @override
  _UpcommingLaunchState createState() => _UpcommingLaunchState();
}

class _UpcommingLaunchState extends State<UpcommingLaunch> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Upcomming Launch'),
          backgroundColor: Colors.black,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
            "https://i.ytimg.com/vi/sX1Y2JMK6g8/maxresdefault.jpg",
            fit: BoxFit.cover,
          )),
        ),
        SliverFixedExtentList(
          itemExtent: 64.0,
          delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                    onTap: () {},
                    title: Text('All hail upcomming launches',
                        style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
              childCount: 10),
        ),
      ],
    );
  }
}

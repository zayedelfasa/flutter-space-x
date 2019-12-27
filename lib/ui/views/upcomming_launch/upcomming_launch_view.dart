import 'package:flutter/material.dart';
import 'package:flutterspacex/ui/base/base_widget.dart';
import 'package:flutterspacex/ui/views/upcomming_launch/upcomming_launch_model.dart';
import 'package:provider/provider.dart';
import '../../shared/text_styles.dart' as textStyle;

class UpcommingLaunch extends StatefulWidget {
  @override
  _UpcommingLaunchState createState() => _UpcommingLaunchState();
}

class _UpcommingLaunchState extends State<UpcommingLaunch> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<UpcommingLaunchModel>(
      model: UpcommingLaunchModel(api: Provider.of(context)),
      onModelReady: (model) => model.getUpcommingLaunch(),
      builder: (context, model, child) => model.busy
          ? Center(
        child: CircularProgressIndicator(),
      )
          : CustomScrollView(
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
                            title: Text(
                                '${model.upcommingLaunchList[index].missionName}',
                                style: textStyle.subHeaderStyle),
                            subtitle: Text('${model.upcommingLaunchList[index].launchDateUtc} UTC',
                                style: textStyle.normalFont),
                            dense: true,
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ),
                      childCount: model.upcommingLaunchList.length),
                ),
              ],
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterspacex/ui/base/base_widget.dart';
import 'package:flutterspacex/ui/views/latest_launch/latest_launch_model.dart';
import 'package:provider/provider.dart';
import '../../shared/text_styles.dart' as textStyle;

class LatestLaunch extends StatefulWidget {
  @override
  _LatestLaunchState createState() => _LatestLaunchState();
}

class _LatestLaunchState extends State<LatestLaunch> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<LatestLaunchModel>(
      model: LatestLaunchModel(api: Provider.of(context)),
      onModelReady: (model) => model.getLatestLaunch(),
      builder: (context, model, child) => model.busy ? Center(
        child: CircularProgressIndicator(),
      ) : CustomScrollView(
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
                      '${model.listLatestLaunch[index].missionName}',
                      style: textStyle.subHeaderStyle),
                  subtitle: Text('${model.listLatestLaunch[index].launchDateUtc} UTC',
                      style: textStyle.normalFont),
                  dense: true,
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                childCount: model.listLatestLaunch.length),
          ),
        ],
      ),
    );
  }
}

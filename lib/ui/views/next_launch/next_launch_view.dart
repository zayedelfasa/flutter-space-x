import 'package:flutter/material.dart';
import 'package:flutterspacex/ui/base/base_widget.dart';
import 'package:flutterspacex/ui/views/next_launch/next_launch_model.dart';
import 'package:provider/provider.dart';
import '../../shared/text_styles.dart' as textStyle;

class NextLaunch extends StatefulWidget {
  @override
  _NextLaunchState createState() => _NextLaunchState();
}

class _NextLaunchState extends State<NextLaunch> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<NextLaunchModel>(
      model: NextLaunchModel(api: Provider.of(context)),
      onModelReady: (model) => model.getNextLaunch(),
      builder: (context, model, child) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraint) {
              if (model.busy) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: <Widget>[
                  Container(
                    child: Center(
                      child:
                          Text("Welcom to Space X", style: textStyle.header1),
                    ),
                    height: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          "https://i.ytimg.com/vi/sX1Y2JMK6g8/maxresdefault.jpg"),
                      fit: BoxFit.cover,
                    )),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('Launched by ${model.nextLaunch.rocket.rocketName}',
                        style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('Launch date', style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('LaunchPad', style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text('Static Fire', style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                  ),
                  ListTile(
                    title:
                        Text('Dragon Capsule', style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('First Stage', style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title:
                        Text('Landing Zone', style: textStyle.subHeaderStyle),
                    subtitle: Text('It Will Carry CRS-19 to ISS Orbit',
                        style: textStyle.normalFont),
                    dense: true,
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}

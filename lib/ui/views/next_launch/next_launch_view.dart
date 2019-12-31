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
        if (model.busy) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return CustomScrollView(slivers: <Widget>[
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

          SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('Description', style: textStyle.subHeaderStyle),
                  ),
                  subtitle: Text('${model.nextLaunch.details}', style: textStyle.normalFont),
                  dense: true,
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Launched by ${model.nextLaunch.rocket.rocketName}', style: textStyle.subHeaderStyle),
                  subtitle: Text('It Will Carry CRS-19 to ISS Orbit', style: textStyle.normalFont),
                  dense: true,
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Launch date', style: textStyle.subHeaderStyle),
                  subtitle: Text('It will launch at ${model.nextLaunch.launchDateUtc}', style: textStyle.normalFont),
                  dense: true,
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Launch Site ${model.nextLaunch.launchSite.siteName}', style: textStyle.subHeaderStyle),
                  subtitle: Text('${model.nextLaunch.launchSite.siteNameLong}', style: textStyle.normalFont),
                  dense: true,
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  title: Text('Static Fire', style: textStyle.subHeaderStyle),
                  subtitle: Text('It Will Carry CRS-19 to ISS Orbit', style: textStyle.normalFont),
                  dense: true,
                ),
                ListTile(
                  title: Text('Flight Number', style: textStyle.subHeaderStyle),
                  subtitle: Text('${model.nextLaunch.flightNumber}', style: textStyle.normalFont),
                  dense: true,
                ),
                ListTile(
                  onTap: () {},
                  title: Text('First Stage', style: textStyle.subHeaderStyle),
                  subtitle: Text(
                      'Type ${model.nextLaunch.rocket.firstStage.cores[0].landingType} with vehicle ${model.nextLaunch.rocket.firstStage.cores[0].landingVehicle}',
                      style: textStyle.normalFont),
                  dense: true,
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ])),
        ]);
      },
    );
  }
}

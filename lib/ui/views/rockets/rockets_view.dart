import 'package:flutter/material.dart';
import 'package:flutterspacex/ui/base/base_widget.dart';
import 'package:flutterspacex/ui/views/rockets/rockets_model.dart';
import 'package:provider/provider.dart';
import '../../shared/text_styles.dart' as textStyle;

class Rockets extends StatefulWidget {
  @override
  _RocketsState createState() => _RocketsState();
}

class _RocketsState extends State<Rockets> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<RocketModel>(
        model: RocketModel(api: Provider.of(context)),
        onModelReady: (model) => model.getRocket(),
        builder: (context, model, child) {
          if (model.busy) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Scaffold(
            body: LayoutBuilder(builder: (context, constraint) {
              return ListView.builder(
                  itemCount: model.listRocket.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {},
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('${model.listRocket[index].rocketName}', style: textStyle.subHeaderStyle),
                      ),
                      subtitle: Text('${model.listRocket[index].company}, ${model.listRocket[index].country}', style: textStyle.normalFont),
                      dense: true,
                      trailing: Icon(Icons.keyboard_arrow_right),
                    );
                  });
            }),
          );
        });
  }
}

import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterspacex/enum/connection_state.dart';
import 'package:flutterspacex/models/Rocket.dart' as R;
import 'package:flutterspacex/models/base/base_model.dart';
import 'package:flutterspacex/services/api.dart';

class RocketModel extends BaseModel {
  Api api;
  var listRocket = List<R.Rocket>();
  RocketModel({@required Api api}) : this.api = api;

  Future getRocket() async {
    print("on get next launch");
    var connectivityResult = await (Connectivity().checkConnectivity());
    setBusy(true);
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {

      setConnected(ConnState.isConnected);
      listRocket = await api.getRequestRockets();
//      print("next launch is : ${nextLaunch.rocket.rocketName}");
      setBusy(false);

    } else {
      setConnected(ConnState.isNotConnected);
      setBusy(false);
    }
  }
}

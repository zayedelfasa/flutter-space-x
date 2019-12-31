import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterspacex/enum/connection_state.dart';
import 'package:flutterspacex/models/LatestLaunch.dart';
import 'package:flutterspacex/models/base/base_model.dart';
import 'package:flutterspacex/services/api.dart';

class LatestLaunchModel extends BaseModel {
  Api api;
  var listLatestLaunch = List<LatestLaunch>();
  LatestLaunchModel({@required Api api}) : this.api = api;

  Future getLatestLaunch() async {
    print("on get next launch");
    var connectivityResult = await (Connectivity().checkConnectivity());
    setBusy(true);
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {

      setConnected(ConnState.isConnected);
      listLatestLaunch = await api.getRequestLatestLaunch();
//      print("next launch is : ${nextLaunch.rocket.rocketName}");
      setBusy(false);

    } else {
      setConnected(ConnState.isNotConnected);
      setBusy(false);
    }
  }
}

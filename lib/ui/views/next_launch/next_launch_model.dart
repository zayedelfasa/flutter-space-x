import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterspacex/enum/connection_state.dart';
import 'package:flutterspacex/models/NextLaunch.dart';
import 'package:flutterspacex/models/base/base_model.dart';
import 'package:flutterspacex/services/api.dart';

class NextLaunchModel extends BaseModel {
  Api api;
  var nextLaunch = NextLaunch();
  String rocketName = "";
  NextLaunchModel({@required Api api}) : this.api = api;

  Future getNextLaunch() async {
    print("on get next launch");
    var connectivityResult = await (Connectivity().checkConnectivity());

    setBusy(true);
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {

      setConnected(ConnState.isConnected);
      nextLaunch = await api.getRequestNextLaunch();
      print("next launch is : ${nextLaunch.rocket.rocketName}");

      setBusy(false);

    } else {
      setConnected(ConnState.isNotConnected);
      setBusy(false);
    }
  }
}

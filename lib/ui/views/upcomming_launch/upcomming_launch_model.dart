import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutterspacex/enum/connection_state.dart';
import 'package:flutterspacex/models/UpcommingLaunch.dart';
import 'package:flutterspacex/models/base/base_model.dart';
import 'package:flutterspacex/services/api.dart';

class UpcommingLaunchModel extends BaseModel {
  Api api;
  var upcommingLaunchList = List<UpcommingLaunch>();
  String rocketName = "";
  UpcommingLaunchModel({@required Api api}) : this.api = api;
//  getRequestUpcommingLaunch()

  Future<void> getUpcommingLaunch() async {
    print("on get upcomming launch");
    var connectivityResult = await (Connectivity().checkConnectivity());

    setBusy(true);
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {

      setConnected(ConnState.isConnected);
      upcommingLaunchList = await api.getRequestUpcommingLaunch();
      print("data upcomming launch : ${upcommingLaunchList.toString()}");
      setBusy(false);

    } else {
      setConnected(ConnState.isNotConnected);
      setBusy(false);
    }
  }
}

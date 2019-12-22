import 'package:flutter/material.dart';
import 'package:flutterspacex/enum/connection_state.dart';

class BaseModel extends ChangeNotifier {
  bool _busy = false;
  bool _busyAksen = false;
  ConnState _connectionState = ConnState.isConnected;

  bool get busy => _busy;
  bool get busyAksen => _busyAksen;
  ConnState get connState => _connectionState;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }

  void setBusyAksen(bool value) {
    _busyAksen = value;
    notifyListeners();
  }

  void setConnected(ConnState connState) {
    _connectionState = connState;
    notifyListeners();
  }

  void setNotifyListener() {
    notifyListeners();
  }
}

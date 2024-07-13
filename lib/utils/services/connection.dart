import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:spotify/utils/services/screens/no_internet.dart';

class ConnectionStatusListener {
  //TODO : This create the single instance by calling the `internal` constructor specified below
  static final _singleton = ConnectionStatusListener._internal();
  ConnectionStatusListener._internal();

  bool hasShowNoInternet = false;
  // TODO : connectivity_plus
  final Connectivity _connectivity = Connectivity();

  // TODO :This is what's used to retrieve the instance through the app
  static ConnectionStatusListener get instance => _singleton;

  // TODO : This tracks the current connection status
  bool hasConnection = false;

  // TODO : This is how we'll allow subscribing
  StreamController connectionChangeController = StreamController.broadcast();

  Stream get connectionChange => connectionChangeController.stream;

  // flutter_connectivity's listener
  void _connectionChange(ConnectivityResult result) {
    checkConnection();
  }

  // TODO :The test to actually see if there is a connection
  Future<bool> checkConnection() async {
    bool previousConnection = hasConnection;

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } catch (e) {
      hasConnection = false;
    }

    // TODO : The connection status changed send out an update to all listeners
    if (previousConnection != hasConnection) {
      connectionChangeController.add(hasConnection);
    }

    return hasConnection;
  }

  // TODO : Hook into connectivity_plus's Stream to listen for changes
  // TODO : And check the connection status out of the gate
  Future<void> initialize() async {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    await checkConnection();
  }

  // TODO : A clean up method to close our StreamController
  void dispose() {
    connectionChangeController.close();
  }
}

updateConnectivity(
  dynamic hasConnection,
  ConnectionStatusListener networkManager,
) {
  if (!hasConnection) {
    networkManager.hasShowNoInternet = true;
    Get.to(const NoInternetScreen());
  } else {
    if (networkManager.hasShowNoInternet) {
      networkManager.hasShowNoInternet = false;
      Get.back();
    }
  }
}

initNoInternetListerner() async {
  var networkManager = ConnectionStatusListener.instance;
  await networkManager.initialize();

  if (!networkManager.hasConnection) {
    updateConnectivity(false, networkManager);
  }

  networkManager.connectionChange.listen((event) {
    if (kDebugMode) {
      print('initNoInternetListener $event');
    }
    updateConnectivity(event, networkManager);
  });
}

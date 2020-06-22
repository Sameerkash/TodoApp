import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_provider/state/connectivity_state.dart';

class ConnectivityVM extends StateNotifier<ConnectivityState>
    with LocatorMixin {
  ConnectivityVM() : super(ConnectivityState.disConnected());

  StreamSubscription<ConnectivityResult> subscription;
  @override
  void initState() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      _getStatusFromResult(result);
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  ConnectivityResult _getStatusFromResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        state = ConnectivityState.connected();
        return ConnectivityResult.wifi;
        break;
      case ConnectivityResult.none:
        state = ConnectivityState.disConnected();
        return ConnectivityResult.none;
        break;
      default:
        state = ConnectivityState.disConnected();
        return ConnectivityResult.none;
    }
  }
}

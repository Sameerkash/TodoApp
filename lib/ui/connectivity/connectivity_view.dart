import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_provider/state/connectivity_state.dart';
import 'package:state_notifier_provider/ui/signup/auth_view.dart';

class ConnectivityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<ConnectivityState>().when(
          connected: () => AuthView(),
          disConnected: () => Scaffold(
            body: Center(
              child: Text(
                "Not Connected",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        );
  }
}

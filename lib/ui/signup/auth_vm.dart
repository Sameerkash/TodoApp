import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_provider/state/auth_state.dart';

class AuthVM extends StateNotifier<AuthState> with LocatorMixin {
  AuthVM() : super(AuthState.initial());

  void login() {
    
  }
}

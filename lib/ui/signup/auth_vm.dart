import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_provider/models/user.dart';
import 'package:state_notifier_provider/services/local_storage.dart';
import 'package:state_notifier_provider/state/auth_state.dart';

class AuthVM extends StateNotifier<AuthState> with LocatorMixin {
  AuthVM() : super(AuthState.initial());

  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  void checkUserLoggedIn() async {
    final currentState = state;
    if (currentState == AuthState.initial()) {
      final exists = await read<LocalStorage>().getLoggedInUser();
      if (exists) state = AuthState.authenticated();
    } else {
      state = AuthState.unauthenticated();
    }
  }

  void login(String username, String password) {
    final currentState = state;
    if (currentState == AuthState.unauthenticated()) {
      final user =
          User(id: "hb5464asd5as5d", name: username, password: password);
      read<LocalStorage>().loginUser(user);
      state = AuthState.authenticated();
    }
  }

  void logout() {
    final currentState = state;
    if (currentState == AuthState.authenticated()) {
      read<LocalStorage>().logoutUser();
      state = AuthState.unauthenticated();
    }
  }
}

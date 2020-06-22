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
      print(exists);
      if (exists)
        state = AuthState.authenticated();
      else
        state = AuthState.unauthenticated();
    }
  }

  void login(String username, String password) async {
    final currentState = state;
    if (currentState == AuthState.unauthenticated()) {
      final user =
          User(id: "hb5464asd5as5d", name: username, password: password);
      final login = await read<LocalStorage>().loginUser(user);
      if (login)
        state = AuthState.authenticated();
      else
        state = AuthState.unauthenticated();
    }
  }

  void logout() async {
    final currentState = state;
    if (currentState == AuthState.authenticated()) {
      final logout = await read<LocalStorage>().logoutUser();
      if (logout)
        state = AuthState.unauthenticated();
      else
        state = AuthState.authenticated();
    }
  }
}

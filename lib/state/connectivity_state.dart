import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.freezed.dart';

@freezed
abstract class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.connected() = Connected;
  const factory ConnectivityState.disConnected() = Disconnected;
}
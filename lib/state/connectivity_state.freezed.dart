// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'connectivity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ConnectivityStateTearOff {
  const _$ConnectivityStateTearOff();

  Connected connected() {
    return const Connected();
  }

  Disconnected disConnected() {
    return const Disconnected();
  }
}

// ignore: unused_element
const $ConnectivityState = _$ConnectivityStateTearOff();

mixin _$ConnectivityState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connected(),
    @required Result disConnected(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connected(),
    Result disConnected(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connected(Connected value),
    @required Result disConnected(Disconnected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connected(Connected value),
    Result disConnected(Disconnected value),
    @required Result orElse(),
  });
}

abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res>;
}

class _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  final ConnectivityState _value;
  // ignore: unused_field
  final $Res Function(ConnectivityState) _then;
}

abstract class $ConnectedCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) then) =
      _$ConnectedCopyWithImpl<$Res>;
}

class _$ConnectedCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(Connected _value, $Res Function(Connected) _then)
      : super(_value, (v) => _then(v as Connected));

  @override
  Connected get _value => super._value as Connected;
}

class _$Connected implements Connected {
  const _$Connected();

  @override
  String toString() {
    return 'ConnectivityState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connected(),
    @required Result disConnected(),
  }) {
    assert(connected != null);
    assert(disConnected != null);
    return connected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connected(),
    Result disConnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connected(Connected value),
    @required Result disConnected(Disconnected value),
  }) {
    assert(connected != null);
    assert(disConnected != null);
    return connected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connected(Connected value),
    Result disConnected(Disconnected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements ConnectivityState {
  const factory Connected() = _$Connected;
}

abstract class $DisconnectedCopyWith<$Res> {
  factory $DisconnectedCopyWith(
          Disconnected value, $Res Function(Disconnected) then) =
      _$DisconnectedCopyWithImpl<$Res>;
}

class _$DisconnectedCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements $DisconnectedCopyWith<$Res> {
  _$DisconnectedCopyWithImpl(
      Disconnected _value, $Res Function(Disconnected) _then)
      : super(_value, (v) => _then(v as Disconnected));

  @override
  Disconnected get _value => super._value as Disconnected;
}

class _$Disconnected implements Disconnected {
  const _$Disconnected();

  @override
  String toString() {
    return 'ConnectivityState.disConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result connected(),
    @required Result disConnected(),
  }) {
    assert(connected != null);
    assert(disConnected != null);
    return disConnected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result connected(),
    Result disConnected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disConnected != null) {
      return disConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result connected(Connected value),
    @required Result disConnected(Disconnected value),
  }) {
    assert(connected != null);
    assert(disConnected != null);
    return disConnected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result connected(Connected value),
    Result disConnected(Disconnected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disConnected != null) {
      return disConnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements ConnectivityState {
  const factory Disconnected() = _$Disconnected;
}

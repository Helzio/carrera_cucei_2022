// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _NotLogged notLogged() {
    return const _NotLogged();
  }

  _Logged logged(Corredor user) {
    return _Logged(
      user,
    );
  }

  _Failure failure(LoginFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notLogged,
    required TResult Function(Corredor user) logged,
    required TResult Function(LoginFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notLogged,
    required TResult Function(Corredor user) logged,
    required TResult Function(LoginFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$NotLoggedCopyWith<$Res> {
  factory _$NotLoggedCopyWith(
          _NotLogged value, $Res Function(_NotLogged) then) =
      __$NotLoggedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotLoggedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$NotLoggedCopyWith<$Res> {
  __$NotLoggedCopyWithImpl(_NotLogged _value, $Res Function(_NotLogged) _then)
      : super(_value, (v) => _then(v as _NotLogged));

  @override
  _NotLogged get _value => super._value as _NotLogged;
}

/// @nodoc

class _$_NotLogged extends _NotLogged {
  const _$_NotLogged() : super._();

  @override
  String toString() {
    return 'AuthState.notLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotLogged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notLogged,
    required TResult Function(Corredor user) logged,
    required TResult Function(LoginFailure failure) failure,
  }) {
    return notLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
  }) {
    return notLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Failure value) failure,
  }) {
    return notLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
  }) {
    return notLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged(this);
    }
    return orElse();
  }
}

abstract class _NotLogged extends AuthState {
  const factory _NotLogged() = _$_NotLogged;
  const _NotLogged._() : super._();
}

/// @nodoc
abstract class _$LoggedCopyWith<$Res> {
  factory _$LoggedCopyWith(_Logged value, $Res Function(_Logged) then) =
      __$LoggedCopyWithImpl<$Res>;
  $Res call({Corredor user});

  $CorredorCopyWith<$Res> get user;
}

/// @nodoc
class __$LoggedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoggedCopyWith<$Res> {
  __$LoggedCopyWithImpl(_Logged _value, $Res Function(_Logged) _then)
      : super(_value, (v) => _then(v as _Logged));

  @override
  _Logged get _value => super._value as _Logged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Logged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Corredor,
    ));
  }

  @override
  $CorredorCopyWith<$Res> get user {
    return $CorredorCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Logged extends _Logged {
  const _$_Logged(this.user) : super._();

  @override
  final Corredor user;

  @override
  String toString() {
    return 'AuthState.logged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Logged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$LoggedCopyWith<_Logged> get copyWith =>
      __$LoggedCopyWithImpl<_Logged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notLogged,
    required TResult Function(Corredor user) logged,
    required TResult Function(LoginFailure failure) failure,
  }) {
    return logged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Failure value) failure,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class _Logged extends AuthState {
  const factory _Logged(Corredor user) = _$_Logged;
  const _Logged._() : super._();

  Corredor get user;
  @JsonKey(ignore: true)
  _$LoggedCopyWith<_Logged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({LoginFailure failure});

  $LoginFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as LoginFailure,
    ));
  }

  @override
  $LoginFailureCopyWith<$Res> get failure {
    return $LoginFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.failure) : super._();

  @override
  final LoginFailure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notLogged,
    required TResult Function(Corredor user) logged,
    required TResult Function(LoginFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notLogged,
    TResult Function(Corredor user)? logged,
    TResult Function(LoginFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NotLogged value) notLogged,
    required TResult Function(_Logged value) logged,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NotLogged value)? notLogged,
    TResult Function(_Logged value)? logged,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends AuthState {
  const factory _Failure(LoginFailure failure) = _$_Failure;
  const _Failure._() : super._();

  LoginFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

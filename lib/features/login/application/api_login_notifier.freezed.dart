// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_login_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiLoginState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<LoginFailure, Corredor>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiLoginStateCopyWith<ApiLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiLoginStateCopyWith<$Res> {
  factory $ApiLoginStateCopyWith(
          ApiLoginState value, $Res Function(ApiLoginState) then) =
      _$ApiLoginStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      bool loading,
      Option<Either<LoginFailure, Corredor>> option});
}

/// @nodoc
class _$ApiLoginStateCopyWithImpl<$Res>
    implements $ApiLoginStateCopyWith<$Res> {
  _$ApiLoginStateCopyWithImpl(this._value, this._then);

  final ApiLoginState _value;
  // ignore: unused_field
  final $Res Function(ApiLoginState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? option = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginFailure, Corredor>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiLoginStateCopyWith<$Res>
    implements $ApiLoginStateCopyWith<$Res> {
  factory _$$_ApiLoginStateCopyWith(
          _$_ApiLoginState value, $Res Function(_$_ApiLoginState) then) =
      __$$_ApiLoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      bool loading,
      Option<Either<LoginFailure, Corredor>> option});
}

/// @nodoc
class __$$_ApiLoginStateCopyWithImpl<$Res>
    extends _$ApiLoginStateCopyWithImpl<$Res>
    implements _$$_ApiLoginStateCopyWith<$Res> {
  __$$_ApiLoginStateCopyWithImpl(
      _$_ApiLoginState _value, $Res Function(_$_ApiLoginState) _then)
      : super(_value, (v) => _then(v as _$_ApiLoginState));

  @override
  _$_ApiLoginState get _value => super._value as _$_ApiLoginState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? option = freezed,
  }) {
    return _then(_$_ApiLoginState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginFailure, Corredor>>,
    ));
  }
}

/// @nodoc

class _$_ApiLoginState extends _ApiLoginState {
  const _$_ApiLoginState(
      {required this.email,
      required this.password,
      required this.loading,
      required this.option})
      : super._();

  @override
  final String email;
  @override
  final String password;
  @override
  final bool loading;
  @override
  final Option<Either<LoginFailure, Corredor>> option;

  @override
  String toString() {
    return 'ApiLoginState(email: $email, password: $password, loading: $loading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiLoginState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.option, option));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(option));

  @JsonKey(ignore: true)
  @override
  _$$_ApiLoginStateCopyWith<_$_ApiLoginState> get copyWith =>
      __$$_ApiLoginStateCopyWithImpl<_$_ApiLoginState>(this, _$identity);
}

abstract class _ApiLoginState extends ApiLoginState {
  const factory _ApiLoginState(
          {required final String email,
          required final String password,
          required final bool loading,
          required final Option<Either<LoginFailure, Corredor>> option}) =
      _$_ApiLoginState;
  const _ApiLoginState._() : super._();

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Option<Either<LoginFailure, Corredor>> get option =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiLoginStateCopyWith<_$_ApiLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

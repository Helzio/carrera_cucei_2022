// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'distancia_recorrida_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DistanciaRecorridaState {
  double get metros => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DistanciaRecorridaStateCopyWith<DistanciaRecorridaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanciaRecorridaStateCopyWith<$Res> {
  factory $DistanciaRecorridaStateCopyWith(DistanciaRecorridaState value,
          $Res Function(DistanciaRecorridaState) then) =
      _$DistanciaRecorridaStateCopyWithImpl<$Res>;
  $Res call({double metros});
}

/// @nodoc
class _$DistanciaRecorridaStateCopyWithImpl<$Res>
    implements $DistanciaRecorridaStateCopyWith<$Res> {
  _$DistanciaRecorridaStateCopyWithImpl(this._value, this._then);

  final DistanciaRecorridaState _value;
  // ignore: unused_field
  final $Res Function(DistanciaRecorridaState) _then;

  @override
  $Res call({
    Object? metros = freezed,
  }) {
    return _then(_value.copyWith(
      metros: metros == freezed
          ? _value.metros
          : metros // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_DistanciaRecorridaStateCopyWith<$Res>
    implements $DistanciaRecorridaStateCopyWith<$Res> {
  factory _$$_DistanciaRecorridaStateCopyWith(_$_DistanciaRecorridaState value,
          $Res Function(_$_DistanciaRecorridaState) then) =
      __$$_DistanciaRecorridaStateCopyWithImpl<$Res>;
  @override
  $Res call({double metros});
}

/// @nodoc
class __$$_DistanciaRecorridaStateCopyWithImpl<$Res>
    extends _$DistanciaRecorridaStateCopyWithImpl<$Res>
    implements _$$_DistanciaRecorridaStateCopyWith<$Res> {
  __$$_DistanciaRecorridaStateCopyWithImpl(_$_DistanciaRecorridaState _value,
      $Res Function(_$_DistanciaRecorridaState) _then)
      : super(_value, (v) => _then(v as _$_DistanciaRecorridaState));

  @override
  _$_DistanciaRecorridaState get _value =>
      super._value as _$_DistanciaRecorridaState;

  @override
  $Res call({
    Object? metros = freezed,
  }) {
    return _then(_$_DistanciaRecorridaState(
      metros: metros == freezed
          ? _value.metros
          : metros // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DistanciaRecorridaState extends _DistanciaRecorridaState {
  const _$_DistanciaRecorridaState({required this.metros}) : super._();

  @override
  final double metros;

  @override
  String toString() {
    return 'DistanciaRecorridaState(metros: $metros)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistanciaRecorridaState &&
            const DeepCollectionEquality().equals(other.metros, metros));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(metros));

  @JsonKey(ignore: true)
  @override
  _$$_DistanciaRecorridaStateCopyWith<_$_DistanciaRecorridaState>
      get copyWith =>
          __$$_DistanciaRecorridaStateCopyWithImpl<_$_DistanciaRecorridaState>(
              this, _$identity);
}

abstract class _DistanciaRecorridaState extends DistanciaRecorridaState {
  const factory _DistanciaRecorridaState({required final double metros}) =
      _$_DistanciaRecorridaState;
  const _DistanciaRecorridaState._() : super._();

  @override
  double get metros => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DistanciaRecorridaStateCopyWith<_$_DistanciaRecorridaState>
      get copyWith => throw _privateConstructorUsedError;
}

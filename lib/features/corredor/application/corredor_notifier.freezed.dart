// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'corredor_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CorredorStateTearOff {
  const _$CorredorStateTearOff();

  _CorredorState call({required Corredor corredor}) {
    return _CorredorState(
      corredor: corredor,
    );
  }
}

/// @nodoc
const $CorredorState = _$CorredorStateTearOff();

/// @nodoc
mixin _$CorredorState {
  Corredor get corredor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CorredorStateCopyWith<CorredorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorredorStateCopyWith<$Res> {
  factory $CorredorStateCopyWith(
          CorredorState value, $Res Function(CorredorState) then) =
      _$CorredorStateCopyWithImpl<$Res>;
  $Res call({Corredor corredor});

  $CorredorCopyWith<$Res> get corredor;
}

/// @nodoc
class _$CorredorStateCopyWithImpl<$Res>
    implements $CorredorStateCopyWith<$Res> {
  _$CorredorStateCopyWithImpl(this._value, this._then);

  final CorredorState _value;
  // ignore: unused_field
  final $Res Function(CorredorState) _then;

  @override
  $Res call({
    Object? corredor = freezed,
  }) {
    return _then(_value.copyWith(
      corredor: corredor == freezed
          ? _value.corredor
          : corredor // ignore: cast_nullable_to_non_nullable
              as Corredor,
    ));
  }

  @override
  $CorredorCopyWith<$Res> get corredor {
    return $CorredorCopyWith<$Res>(_value.corredor, (value) {
      return _then(_value.copyWith(corredor: value));
    });
  }
}

/// @nodoc
abstract class _$CorredorStateCopyWith<$Res>
    implements $CorredorStateCopyWith<$Res> {
  factory _$CorredorStateCopyWith(
          _CorredorState value, $Res Function(_CorredorState) then) =
      __$CorredorStateCopyWithImpl<$Res>;
  @override
  $Res call({Corredor corredor});

  @override
  $CorredorCopyWith<$Res> get corredor;
}

/// @nodoc
class __$CorredorStateCopyWithImpl<$Res>
    extends _$CorredorStateCopyWithImpl<$Res>
    implements _$CorredorStateCopyWith<$Res> {
  __$CorredorStateCopyWithImpl(
      _CorredorState _value, $Res Function(_CorredorState) _then)
      : super(_value, (v) => _then(v as _CorredorState));

  @override
  _CorredorState get _value => super._value as _CorredorState;

  @override
  $Res call({
    Object? corredor = freezed,
  }) {
    return _then(_CorredorState(
      corredor: corredor == freezed
          ? _value.corredor
          : corredor // ignore: cast_nullable_to_non_nullable
              as Corredor,
    ));
  }
}

/// @nodoc

class _$_CorredorState extends _CorredorState {
  const _$_CorredorState({required this.corredor}) : super._();

  @override
  final Corredor corredor;

  @override
  String toString() {
    return 'CorredorState(corredor: $corredor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CorredorState &&
            const DeepCollectionEquality().equals(other.corredor, corredor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(corredor));

  @JsonKey(ignore: true)
  @override
  _$CorredorStateCopyWith<_CorredorState> get copyWith =>
      __$CorredorStateCopyWithImpl<_CorredorState>(this, _$identity);
}

abstract class _CorredorState extends CorredorState {
  const factory _CorredorState({required Corredor corredor}) = _$_CorredorState;
  const _CorredorState._() : super._();

  @override
  Corredor get corredor;
  @override
  @JsonKey(ignore: true)
  _$CorredorStateCopyWith<_CorredorState> get copyWith =>
      throw _privateConstructorUsedError;
}

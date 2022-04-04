// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ranking_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RankingUserTearOff {
  const _$RankingUserTearOff();

  _RankingUser call(
      {required String nombre,
      required String foto,
      required String distancia,
      required String rank}) {
    return _RankingUser(
      nombre: nombre,
      foto: foto,
      distancia: distancia,
      rank: rank,
    );
  }
}

/// @nodoc
const $RankingUser = _$RankingUserTearOff();

/// @nodoc
mixin _$RankingUser {
  String get nombre => throw _privateConstructorUsedError;
  String get foto => throw _privateConstructorUsedError;
  String get distancia => throw _privateConstructorUsedError;
  String get rank => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RankingUserCopyWith<RankingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingUserCopyWith<$Res> {
  factory $RankingUserCopyWith(
          RankingUser value, $Res Function(RankingUser) then) =
      _$RankingUserCopyWithImpl<$Res>;
  $Res call({String nombre, String foto, String distancia, String rank});
}

/// @nodoc
class _$RankingUserCopyWithImpl<$Res> implements $RankingUserCopyWith<$Res> {
  _$RankingUserCopyWithImpl(this._value, this._then);

  final RankingUser _value;
  // ignore: unused_field
  final $Res Function(RankingUser) _then;

  @override
  $Res call({
    Object? nombre = freezed,
    Object? foto = freezed,
    Object? distancia = freezed,
    Object? rank = freezed,
  }) {
    return _then(_value.copyWith(
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      distancia: distancia == freezed
          ? _value.distancia
          : distancia // ignore: cast_nullable_to_non_nullable
              as String,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RankingUserCopyWith<$Res>
    implements $RankingUserCopyWith<$Res> {
  factory _$RankingUserCopyWith(
          _RankingUser value, $Res Function(_RankingUser) then) =
      __$RankingUserCopyWithImpl<$Res>;
  @override
  $Res call({String nombre, String foto, String distancia, String rank});
}

/// @nodoc
class __$RankingUserCopyWithImpl<$Res> extends _$RankingUserCopyWithImpl<$Res>
    implements _$RankingUserCopyWith<$Res> {
  __$RankingUserCopyWithImpl(
      _RankingUser _value, $Res Function(_RankingUser) _then)
      : super(_value, (v) => _then(v as _RankingUser));

  @override
  _RankingUser get _value => super._value as _RankingUser;

  @override
  $Res call({
    Object? nombre = freezed,
    Object? foto = freezed,
    Object? distancia = freezed,
    Object? rank = freezed,
  }) {
    return _then(_RankingUser(
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      distancia: distancia == freezed
          ? _value.distancia
          : distancia // ignore: cast_nullable_to_non_nullable
              as String,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RankingUser extends _RankingUser {
  const _$_RankingUser(
      {required this.nombre,
      required this.foto,
      required this.distancia,
      required this.rank})
      : super._();

  @override
  final String nombre;
  @override
  final String foto;
  @override
  final String distancia;
  @override
  final String rank;

  @override
  String toString() {
    return 'RankingUser(nombre: $nombre, foto: $foto, distancia: $distancia, rank: $rank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RankingUser &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality().equals(other.foto, foto) &&
            const DeepCollectionEquality().equals(other.distancia, distancia) &&
            const DeepCollectionEquality().equals(other.rank, rank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(foto),
      const DeepCollectionEquality().hash(distancia),
      const DeepCollectionEquality().hash(rank));

  @JsonKey(ignore: true)
  @override
  _$RankingUserCopyWith<_RankingUser> get copyWith =>
      __$RankingUserCopyWithImpl<_RankingUser>(this, _$identity);
}

abstract class _RankingUser extends RankingUser {
  const factory _RankingUser(
      {required String nombre,
      required String foto,
      required String distancia,
      required String rank}) = _$_RankingUser;
  const _RankingUser._() : super._();

  @override
  String get nombre;
  @override
  String get foto;
  @override
  String get distancia;
  @override
  String get rank;
  @override
  @JsonKey(ignore: true)
  _$RankingUserCopyWith<_RankingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ranking_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RankingUserDto _$RankingUserDtoFromJson(Map<String, dynamic> json) {
  return _RankingUserDto.fromJson(json);
}

/// @nodoc
mixin _$RankingUserDto {
  @JsonKey(name: 'Nombre')
  String get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'Distancia')
  String get distancia => throw _privateConstructorUsedError;
  @JsonKey(name: 'Escuela', defaultValue: "")
  String get escuela => throw _privateConstructorUsedError;
  @JsonKey(name: 'Foto')
  String get foto => throw _privateConstructorUsedError;
  @JsonKey(name: 'Tiempo', defaultValue: "0")
  String get tiempo => throw _privateConstructorUsedError;
  @JsonKey(name: 'rank', defaultValue: "0")
  String get rank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingUserDtoCopyWith<RankingUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingUserDtoCopyWith<$Res> {
  factory $RankingUserDtoCopyWith(
          RankingUserDto value, $Res Function(RankingUserDto) then) =
      _$RankingUserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Nombre') String nombre,
      @JsonKey(name: 'Distancia') String distancia,
      @JsonKey(name: 'Escuela', defaultValue: "") String escuela,
      @JsonKey(name: 'Foto') String foto,
      @JsonKey(name: 'Tiempo', defaultValue: "0") String tiempo,
      @JsonKey(name: 'rank', defaultValue: "0") String rank});
}

/// @nodoc
class _$RankingUserDtoCopyWithImpl<$Res>
    implements $RankingUserDtoCopyWith<$Res> {
  _$RankingUserDtoCopyWithImpl(this._value, this._then);

  final RankingUserDto _value;
  // ignore: unused_field
  final $Res Function(RankingUserDto) _then;

  @override
  $Res call({
    Object? nombre = freezed,
    Object? distancia = freezed,
    Object? escuela = freezed,
    Object? foto = freezed,
    Object? tiempo = freezed,
    Object? rank = freezed,
  }) {
    return _then(_value.copyWith(
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      distancia: distancia == freezed
          ? _value.distancia
          : distancia // ignore: cast_nullable_to_non_nullable
              as String,
      escuela: escuela == freezed
          ? _value.escuela
          : escuela // ignore: cast_nullable_to_non_nullable
              as String,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      tiempo: tiempo == freezed
          ? _value.tiempo
          : tiempo // ignore: cast_nullable_to_non_nullable
              as String,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RankingUserDtoCopyWith<$Res>
    implements $RankingUserDtoCopyWith<$Res> {
  factory _$$_RankingUserDtoCopyWith(
          _$_RankingUserDto value, $Res Function(_$_RankingUserDto) then) =
      __$$_RankingUserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Nombre') String nombre,
      @JsonKey(name: 'Distancia') String distancia,
      @JsonKey(name: 'Escuela', defaultValue: "") String escuela,
      @JsonKey(name: 'Foto') String foto,
      @JsonKey(name: 'Tiempo', defaultValue: "0") String tiempo,
      @JsonKey(name: 'rank', defaultValue: "0") String rank});
}

/// @nodoc
class __$$_RankingUserDtoCopyWithImpl<$Res>
    extends _$RankingUserDtoCopyWithImpl<$Res>
    implements _$$_RankingUserDtoCopyWith<$Res> {
  __$$_RankingUserDtoCopyWithImpl(
      _$_RankingUserDto _value, $Res Function(_$_RankingUserDto) _then)
      : super(_value, (v) => _then(v as _$_RankingUserDto));

  @override
  _$_RankingUserDto get _value => super._value as _$_RankingUserDto;

  @override
  $Res call({
    Object? nombre = freezed,
    Object? distancia = freezed,
    Object? escuela = freezed,
    Object? foto = freezed,
    Object? tiempo = freezed,
    Object? rank = freezed,
  }) {
    return _then(_$_RankingUserDto(
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      distancia: distancia == freezed
          ? _value.distancia
          : distancia // ignore: cast_nullable_to_non_nullable
              as String,
      escuela: escuela == freezed
          ? _value.escuela
          : escuela // ignore: cast_nullable_to_non_nullable
              as String,
      foto: foto == freezed
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      tiempo: tiempo == freezed
          ? _value.tiempo
          : tiempo // ignore: cast_nullable_to_non_nullable
              as String,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RankingUserDto extends _RankingUserDto {
  const _$_RankingUserDto(
      {@JsonKey(name: 'Nombre') required this.nombre,
      @JsonKey(name: 'Distancia') required this.distancia,
      @JsonKey(name: 'Escuela', defaultValue: "") required this.escuela,
      @JsonKey(name: 'Foto') required this.foto,
      @JsonKey(name: 'Tiempo', defaultValue: "0") required this.tiempo,
      @JsonKey(name: 'rank', defaultValue: "0") required this.rank})
      : super._();

  factory _$_RankingUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_RankingUserDtoFromJson(json);

  @override
  @JsonKey(name: 'Nombre')
  final String nombre;
  @override
  @JsonKey(name: 'Distancia')
  final String distancia;
  @override
  @JsonKey(name: 'Escuela', defaultValue: "")
  final String escuela;
  @override
  @JsonKey(name: 'Foto')
  final String foto;
  @override
  @JsonKey(name: 'Tiempo', defaultValue: "0")
  final String tiempo;
  @override
  @JsonKey(name: 'rank', defaultValue: "0")
  final String rank;

  @override
  String toString() {
    return 'RankingUserDto(nombre: $nombre, distancia: $distancia, escuela: $escuela, foto: $foto, tiempo: $tiempo, rank: $rank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RankingUserDto &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality().equals(other.distancia, distancia) &&
            const DeepCollectionEquality().equals(other.escuela, escuela) &&
            const DeepCollectionEquality().equals(other.foto, foto) &&
            const DeepCollectionEquality().equals(other.tiempo, tiempo) &&
            const DeepCollectionEquality().equals(other.rank, rank));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(distancia),
      const DeepCollectionEquality().hash(escuela),
      const DeepCollectionEquality().hash(foto),
      const DeepCollectionEquality().hash(tiempo),
      const DeepCollectionEquality().hash(rank));

  @JsonKey(ignore: true)
  @override
  _$$_RankingUserDtoCopyWith<_$_RankingUserDto> get copyWith =>
      __$$_RankingUserDtoCopyWithImpl<_$_RankingUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RankingUserDtoToJson(this);
  }
}

abstract class _RankingUserDto extends RankingUserDto {
  const factory _RankingUserDto(
      {@JsonKey(name: 'Nombre')
          required final String nombre,
      @JsonKey(name: 'Distancia')
          required final String distancia,
      @JsonKey(name: 'Escuela', defaultValue: "")
          required final String escuela,
      @JsonKey(name: 'Foto')
          required final String foto,
      @JsonKey(name: 'Tiempo', defaultValue: "0")
          required final String tiempo,
      @JsonKey(name: 'rank', defaultValue: "0")
          required final String rank}) = _$_RankingUserDto;
  const _RankingUserDto._() : super._();

  factory _RankingUserDto.fromJson(Map<String, dynamic> json) =
      _$_RankingUserDto.fromJson;

  @override
  @JsonKey(name: 'Nombre')
  String get nombre => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Distancia')
  String get distancia => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Escuela', defaultValue: "")
  String get escuela => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Foto')
  String get foto => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Tiempo', defaultValue: "0")
  String get tiempo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rank', defaultValue: "0")
  String get rank => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RankingUserDtoCopyWith<_$_RankingUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

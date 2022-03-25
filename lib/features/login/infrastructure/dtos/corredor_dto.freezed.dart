// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'corredor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CorredorDto _$CorredorDtoFromJson(Map<String, dynamic> json) {
  return _CorredorDto.fromJson(json);
}

/// @nodoc
class _$CorredorDtoTearOff {
  const _$CorredorDtoTearOff();

  _CorredorDto call(
      {@JsonKey(fromJson: idFromJson) required int id,
      @JsonKey(name: "Nombre") required String nombre,
      @JsonKey(name: "Codigo") required String codigo,
      @JsonKey(name: "Correo") required String email,
      @JsonKey(name: "Telefono") required String phone,
      @JsonKey(name: "Escuela") required String escuela,
      @JsonKey(name: "Semestre") required String semestre,
      @JsonKey(name: "Password") required String password}) {
    return _CorredorDto(
      id: id,
      nombre: nombre,
      codigo: codigo,
      email: email,
      phone: phone,
      escuela: escuela,
      semestre: semestre,
      password: password,
    );
  }

  CorredorDto fromJson(Map<String, Object?> json) {
    return CorredorDto.fromJson(json);
  }
}

/// @nodoc
const $CorredorDto = _$CorredorDtoTearOff();

/// @nodoc
mixin _$CorredorDto {
  @JsonKey(fromJson: idFromJson)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Nombre")
  String get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: "Codigo")
  String get codigo => throw _privateConstructorUsedError;
  @JsonKey(name: "Correo")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "Telefono")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "Escuela")
  String get escuela => throw _privateConstructorUsedError;
  @JsonKey(name: "Semestre")
  String get semestre => throw _privateConstructorUsedError;
  @JsonKey(name: "Password")
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorredorDtoCopyWith<CorredorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorredorDtoCopyWith<$Res> {
  factory $CorredorDtoCopyWith(
          CorredorDto value, $Res Function(CorredorDto) then) =
      _$CorredorDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: idFromJson) int id,
      @JsonKey(name: "Nombre") String nombre,
      @JsonKey(name: "Codigo") String codigo,
      @JsonKey(name: "Correo") String email,
      @JsonKey(name: "Telefono") String phone,
      @JsonKey(name: "Escuela") String escuela,
      @JsonKey(name: "Semestre") String semestre,
      @JsonKey(name: "Password") String password});
}

/// @nodoc
class _$CorredorDtoCopyWithImpl<$Res> implements $CorredorDtoCopyWith<$Res> {
  _$CorredorDtoCopyWithImpl(this._value, this._then);

  final CorredorDto _value;
  // ignore: unused_field
  final $Res Function(CorredorDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombre = freezed,
    Object? codigo = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? escuela = freezed,
    Object? semestre = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      codigo: codigo == freezed
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      escuela: escuela == freezed
          ? _value.escuela
          : escuela // ignore: cast_nullable_to_non_nullable
              as String,
      semestre: semestre == freezed
          ? _value.semestre
          : semestre // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CorredorDtoCopyWith<$Res>
    implements $CorredorDtoCopyWith<$Res> {
  factory _$CorredorDtoCopyWith(
          _CorredorDto value, $Res Function(_CorredorDto) then) =
      __$CorredorDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: idFromJson) int id,
      @JsonKey(name: "Nombre") String nombre,
      @JsonKey(name: "Codigo") String codigo,
      @JsonKey(name: "Correo") String email,
      @JsonKey(name: "Telefono") String phone,
      @JsonKey(name: "Escuela") String escuela,
      @JsonKey(name: "Semestre") String semestre,
      @JsonKey(name: "Password") String password});
}

/// @nodoc
class __$CorredorDtoCopyWithImpl<$Res> extends _$CorredorDtoCopyWithImpl<$Res>
    implements _$CorredorDtoCopyWith<$Res> {
  __$CorredorDtoCopyWithImpl(
      _CorredorDto _value, $Res Function(_CorredorDto) _then)
      : super(_value, (v) => _then(v as _CorredorDto));

  @override
  _CorredorDto get _value => super._value as _CorredorDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombre = freezed,
    Object? codigo = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? escuela = freezed,
    Object? semestre = freezed,
    Object? password = freezed,
  }) {
    return _then(_CorredorDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      codigo: codigo == freezed
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      escuela: escuela == freezed
          ? _value.escuela
          : escuela // ignore: cast_nullable_to_non_nullable
              as String,
      semestre: semestre == freezed
          ? _value.semestre
          : semestre // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CorredorDto extends _CorredorDto {
  const _$_CorredorDto(
      {@JsonKey(fromJson: idFromJson) required this.id,
      @JsonKey(name: "Nombre") required this.nombre,
      @JsonKey(name: "Codigo") required this.codigo,
      @JsonKey(name: "Correo") required this.email,
      @JsonKey(name: "Telefono") required this.phone,
      @JsonKey(name: "Escuela") required this.escuela,
      @JsonKey(name: "Semestre") required this.semestre,
      @JsonKey(name: "Password") required this.password})
      : super._();

  factory _$_CorredorDto.fromJson(Map<String, dynamic> json) =>
      _$$_CorredorDtoFromJson(json);

  @override
  @JsonKey(fromJson: idFromJson)
  final int id;
  @override
  @JsonKey(name: "Nombre")
  final String nombre;
  @override
  @JsonKey(name: "Codigo")
  final String codigo;
  @override
  @JsonKey(name: "Correo")
  final String email;
  @override
  @JsonKey(name: "Telefono")
  final String phone;
  @override
  @JsonKey(name: "Escuela")
  final String escuela;
  @override
  @JsonKey(name: "Semestre")
  final String semestre;
  @override
  @JsonKey(name: "Password")
  final String password;

  @override
  String toString() {
    return 'CorredorDto(id: $id, nombre: $nombre, codigo: $codigo, email: $email, phone: $phone, escuela: $escuela, semestre: $semestre, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CorredorDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality().equals(other.codigo, codigo) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.escuela, escuela) &&
            const DeepCollectionEquality().equals(other.semestre, semestre) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(codigo),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(escuela),
      const DeepCollectionEquality().hash(semestre),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$CorredorDtoCopyWith<_CorredorDto> get copyWith =>
      __$CorredorDtoCopyWithImpl<_CorredorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorredorDtoToJson(this);
  }
}

abstract class _CorredorDto extends CorredorDto {
  const factory _CorredorDto(
      {@JsonKey(fromJson: idFromJson) required int id,
      @JsonKey(name: "Nombre") required String nombre,
      @JsonKey(name: "Codigo") required String codigo,
      @JsonKey(name: "Correo") required String email,
      @JsonKey(name: "Telefono") required String phone,
      @JsonKey(name: "Escuela") required String escuela,
      @JsonKey(name: "Semestre") required String semestre,
      @JsonKey(name: "Password") required String password}) = _$_CorredorDto;
  const _CorredorDto._() : super._();

  factory _CorredorDto.fromJson(Map<String, dynamic> json) =
      _$_CorredorDto.fromJson;

  @override
  @JsonKey(fromJson: idFromJson)
  int get id;
  @override
  @JsonKey(name: "Nombre")
  String get nombre;
  @override
  @JsonKey(name: "Codigo")
  String get codigo;
  @override
  @JsonKey(name: "Correo")
  String get email;
  @override
  @JsonKey(name: "Telefono")
  String get phone;
  @override
  @JsonKey(name: "Escuela")
  String get escuela;
  @override
  @JsonKey(name: "Semestre")
  String get semestre;
  @override
  @JsonKey(name: "Password")
  String get password;
  @override
  @JsonKey(ignore: true)
  _$CorredorDtoCopyWith<_CorredorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

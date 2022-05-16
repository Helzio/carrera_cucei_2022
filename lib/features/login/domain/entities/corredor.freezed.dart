// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'corredor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Corredor {
  int get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get codigo => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get escuela => throw _privateConstructorUsedError;
  String get semestre => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CorredorCopyWith<Corredor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorredorCopyWith<$Res> {
  factory $CorredorCopyWith(Corredor value, $Res Function(Corredor) then) =
      _$CorredorCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String nombre,
      String codigo,
      String email,
      String phone,
      String escuela,
      String semestre,
      String password});
}

/// @nodoc
class _$CorredorCopyWithImpl<$Res> implements $CorredorCopyWith<$Res> {
  _$CorredorCopyWithImpl(this._value, this._then);

  final Corredor _value;
  // ignore: unused_field
  final $Res Function(Corredor) _then;

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
abstract class _$$_CorredorCopyWith<$Res> implements $CorredorCopyWith<$Res> {
  factory _$$_CorredorCopyWith(
          _$_Corredor value, $Res Function(_$_Corredor) then) =
      __$$_CorredorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String nombre,
      String codigo,
      String email,
      String phone,
      String escuela,
      String semestre,
      String password});
}

/// @nodoc
class __$$_CorredorCopyWithImpl<$Res> extends _$CorredorCopyWithImpl<$Res>
    implements _$$_CorredorCopyWith<$Res> {
  __$$_CorredorCopyWithImpl(
      _$_Corredor _value, $Res Function(_$_Corredor) _then)
      : super(_value, (v) => _then(v as _$_Corredor));

  @override
  _$_Corredor get _value => super._value as _$_Corredor;

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
    return _then(_$_Corredor(
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

class _$_Corredor extends _Corredor {
  const _$_Corredor(
      {required this.id,
      required this.nombre,
      required this.codigo,
      required this.email,
      required this.phone,
      required this.escuela,
      required this.semestre,
      required this.password})
      : super._();

  @override
  final int id;
  @override
  final String nombre;
  @override
  final String codigo;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String escuela;
  @override
  final String semestre;
  @override
  final String password;

  @override
  String toString() {
    return 'Corredor(id: $id, nombre: $nombre, codigo: $codigo, email: $email, phone: $phone, escuela: $escuela, semestre: $semestre, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Corredor &&
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
  _$$_CorredorCopyWith<_$_Corredor> get copyWith =>
      __$$_CorredorCopyWithImpl<_$_Corredor>(this, _$identity);
}

abstract class _Corredor extends Corredor {
  const factory _Corredor(
      {required final int id,
      required final String nombre,
      required final String codigo,
      required final String email,
      required final String phone,
      required final String escuela,
      required final String semestre,
      required final String password}) = _$_Corredor;
  const _Corredor._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get nombre => throw _privateConstructorUsedError;
  @override
  String get codigo => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get escuela => throw _privateConstructorUsedError;
  @override
  String get semestre => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CorredorCopyWith<_$_Corredor> get copyWith =>
      throw _privateConstructorUsedError;
}

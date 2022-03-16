import 'dart:convert';

import 'package:carrera_cucei_2022/features/login/domain/entities/corredor.dart';
import 'package:carrera_cucei_2022/features/login/infrastructure/dtos/corredor_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginLocal {
  final SharedPreferences _sharedPreferences;
  static const _key = "corredor";
  LoginLocal(this._sharedPreferences);

  Corredor? _cacheCorredor;

  Future<Corredor?> read() async {
    if (_cacheCorredor != null) {
      return _cacheCorredor;
    }

    final jsonString = _sharedPreferences.getString(_key);
    if (jsonString == null) {
      return null;
    } else {
      try {
        final json = jsonDecode(jsonString);
        return _cacheCorredor =
            CorredorDto.fromJson(json as Map<String, dynamic>).toDomain();
      } catch (_) {
        return null;
      }
    }
  }

  Future<bool> save(Corredor corredor) async {
    _cacheCorredor = corredor;
    return _sharedPreferences.setString(
      _key,
      jsonEncode(
        CorredorDto.fromDomain(corredor).toJson(),
      ),
    );
  }

  Future<bool> clear() async {
    _cacheCorredor = null;
    return _sharedPreferences.remove(_key);
  }
}

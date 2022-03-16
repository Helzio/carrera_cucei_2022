class ServerException implements Exception {
  final String? error;

  ServerException({this.error});
}

class DatosInvalidosException implements Exception {}
class SqlRegisterException implements Exception {}
class SqlConectionException implements Exception {}
class InternetException implements Exception {}
class UsuarioYaExisteException implements Exception {}
class PasswordTooShortException implements Exception {}
class CacheException implements Exception {}
class UnimplementedException implements Exception {}

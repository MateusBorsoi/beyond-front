class ServerExceptions implements Exception {
  final String message;
  ServerExceptions(this.message);
}

class InvalidResponseExceptions implements Exception {
  final String message;
  InvalidResponseExceptions(this.message);
}

class UnauthorizedExceptions implements Exception {
  final String message;
  UnauthorizedExceptions(this.message);
}

class GeneralException implements Exception {
  final String message;
  GeneralException(this.message);
}

class LocalStorageException implements Exception {
  final String message;
  LocalStorageException(this.message);
}

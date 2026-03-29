/// Base failure type for repository and service layers.
sealed class Failure {
  const Failure(this.message);

  final String message;
}

final class ParseFailure extends Failure {
  const ParseFailure(super.message);
}

final class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}

final class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}


class AppException implements Exception {
  const AppException(this.message);

  final String message;

  @override
  String toString() => 'AppException: $message';
}
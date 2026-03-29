import 'dart:developer' as developer;

/// Thin logging wrapper for debug builds.
void logInfo(String message, {String name = 'app'}) {
  developer.log(message, name: name);
}

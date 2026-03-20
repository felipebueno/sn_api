typedef SnLogCallback = void Function(
  String level,
  String message, {
  Object? error,
  StackTrace? stackTrace,
});

class SnLogger {
  bool debugMode;
  SnLogCallback? _callback;

  SnLogger({this.debugMode = false, SnLogCallback? onLog}) : _callback = onLog;

  void setCallback(SnLogCallback callback) {
    _callback = callback;
  }

  void info(String message) => _log('INFO', message);
  void warning(String message) => _log('WARNING', message);
  void debug(String message) {
    if (debugMode) _log('DEBUG', message);
  }

  void error(String message, [Object? error, StackTrace? stackTrace]) =>
      _log('ERROR', message, error: error, stackTrace: stackTrace);

  void _log(
    String level,
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (_callback != null) {
      _callback!(level, message, error: error, stackTrace: stackTrace);
    } else if (debugMode || level == 'ERROR' || level == 'WARNING') {
      final ts = DateTime.now().toIso8601String();
      print('[$ts] [$level] $message');
      if (error != null) print('  Error: $error');
      if (stackTrace != null) print('  StackTrace: $stackTrace');
    }
  }
}

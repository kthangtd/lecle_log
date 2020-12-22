part of lecle_logger;

class _LogService {
  static _LogService _sInstance;

  _LogService._();

  factory _LogService.shared() {
    if (_sInstance == null) {
      _sInstance = _LogService._();
    }
    return _sInstance;
  }

  static void init({bool enabled}) {
    Logger.enabled = enabled;

    Logger.config.setTabNames(
      log: "📝",
      debug: "🐛",
      warn: "❗",
      error: "❌",
      request: "⬆️",
      response: "⬇️",
    );
    Logger.config.setPrintNames(
      log: "📝",
      debug: "🐛",
      warn: "❗",
      error: "❌",
      request: "⬆️",
      response: "⬇️",
    );
  }

  void log(Object message, [Object detai]) {
    Logger.log(message, detai);
  }

  void error(Object message, [Object detai]) {
    Logger.error(message, detai);
  }

  void debug(Object message, [Object detai]) {
    Logger.debug(message, detai);
  }

  void warn(Object message, [Object detai]) {
    Logger.warn(message, detai);
  }

  void clear() {
    Logger.clear();
  }

  void net(String api, {String type = "Http", int status = 100, Object data}) {
    Logger.net(api, type: type, status: status, data: data);
  }

  void endNet(String api, {String type = "Http", int status = 100, Object data}) {
    Logger.endNet(api, type: type, status: status, data: data);
  }
}

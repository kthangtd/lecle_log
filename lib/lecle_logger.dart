library lecle_logger;

import 'package:flutter/material.dart';
import 'package:let_log/let_log.dart';

part 'logger_srv.dart';

Future initLogSrv({bool enabled = true}) async {
  assert(enabled != null);
  return _LogService.init(enabled: enabled);
}

_LogService get logSrv => _LogService.shared();

Widget createLoggerView() => Logger();

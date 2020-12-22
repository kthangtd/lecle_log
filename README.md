# LECLE Logger

Log print and view log in realtime.

[![platform](https://img.shields.io/badge/platform-Windows|Mac_OS|Android|iOS-blue.svg)](https://shields.io/)
[![version](https://img.shields.io/badge/version-0.0.1-red.svg)](https://shields.io/)
[![build](https://img.shields.io/badge/build-passing-green.svg)](https://shields.io/)

## How to use?

### Init Service

```dart
void main() async {
  // always enabled log
  await initLogSrv(); 

  // only enabled log in debug mode
  await initLogSrv(enabled: kDebugMode);
}
```

### Preview Log

Use Navigator to push new route with:

```dart
Navigator.of(context).push(MaterialPageRoute(builder: (_) => createLoggerView()));
```

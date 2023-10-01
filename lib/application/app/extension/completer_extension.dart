import 'dart:async';

extension CompleterExtension on Completer<void>? {
  void close() {
    if (this != null && !this!.isCompleted) {
      this!.complete();
    }
  }
}

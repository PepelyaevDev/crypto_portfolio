import 'dart:async';

extension CompleterVoidNullableExtension on Completer<void>? {
  void close() {
    if (this != null && !this!.isCompleted) {
      this!.complete();
    }
  }
}

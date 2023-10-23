import 'package:hive/hive.dart';

class HiveMultiBox<T> {
  final Box<T> _box;
  HiveMultiBox(String key) : _box = Hive.box<T>(name: key);

  List<T>? get values {
    if (_box.isEmpty) return null;
    final int length = _box.length;
    return List<T>.of(_box.getRange(0, length));
  }

  void put(List<T> list) => _box
    ..clear()
    ..addAll(list);
}

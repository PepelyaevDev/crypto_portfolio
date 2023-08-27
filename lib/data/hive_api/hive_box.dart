import 'package:hive/hive.dart';

class HiveSingleBox<T> {
  final Box<T> _box;
  HiveSingleBox(String key) : _box = Hive.box<T>(name: key);

  T? get value {
    if (_box.isEmpty) return null;
    return _box.getAt(0);
  }

  void put(T value) => _box
    ..clear()
    ..add(value);
}

class HiveMultiBox<T> {
  final Box<T> _box;
  HiveMultiBox(String key) : _box = Hive.box<T>(name: key);

  List<T>? get values {
    if (_box.isEmpty) return null;
    return List<T>.from(_box.getRange(0, _box.length));
  }

  void put(List<T> values) => _box
    ..clear()
    ..addAll(values);
}

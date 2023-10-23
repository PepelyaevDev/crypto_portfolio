import 'package:hive/hive.dart';

class HiveSingleBox<T> {
  final Box<T> _box;
  HiveSingleBox(String key) : _box = Hive.box<T>(name: key);

  T? get value {
    if (_box.isEmpty) return null;
    return _box.getAt(0);
  }

  void put(T e) => _box
    ..clear()
    ..add(e);
}

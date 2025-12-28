import 'package:hive/hive.dart';

class HiveManager<T> {
  final String boxName;

  HiveManager(this.boxName);

  Future<void> add(T item) async {
    final box = await Hive.openBox<T>(boxName);
    await box.add(item);
  }

  Future<void> addList(List<T> items) async {
    final box = await Hive.openBox<T>(boxName);
    await box.addAll(items);
  }

  Future<List<T>> getList() async {
    final box = await Hive.openBox<T>(boxName);
    return box.values.toList();
  }

  Future<T?> get(int key) async {
    final box = await Hive.openBox<T>(boxName);
    return box.get(key);
  }

  Future<void> update(int key, T item) async {
    final box = await Hive.openBox<T>(boxName);
    await box.put(key, item);
  }

  Future<void> delete(int key) async {
    final box = await Hive.openBox<T>(boxName);
    await box.delete(key);
  }
}

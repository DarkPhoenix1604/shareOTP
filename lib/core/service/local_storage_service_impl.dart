
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../service/local_storage_service.dart';


class LocalStorageImpl implements LocalStorage {
  final FlutterSecureStorage _storage;

  LocalStorageImpl(this._storage);

  @override
  Future<void> write(SecureStorageItem item) async {
    final encodedValue = item.value;
    return await _storage.write(key: item.key, value: encodedValue);
  }

  @override
  Future<String?> read(String key) async {
    final encodedValue = await _storage.read(key: key);
    return encodedValue;
  }

  @override
  Future<void> delete(String key) async {
    return await _storage.delete(key: key);
  }

  @override
  Future<void> deleteAll() async {
    return await _storage.deleteAll();
  }

  @override
  Future<bool> exists(String key) async {
    final result = await _storage.containsKey(key: key);
    return result;
  }

  @override
  Future<Map<String, dynamic>> readAll() async {
    final allItems = await _storage.readAll();
    return allItems;
  }

  @override
  Future<bool> containsKey(String key) async {
    final result = await _storage.containsKey(key: key);
    return result;
  }
}

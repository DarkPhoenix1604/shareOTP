

abstract class LocalStorage {
  Future<void> write(SecureStorageItem item);

  Future<String?> read(String key);

  Future<void> delete(String key);

  Future<void> deleteAll();

  Future<bool> exists(String key);

  Future<Map<String, dynamic>> readAll();

  Future<bool> containsKey(String key);
}



class SecureStorageItem<T> {
  final String key;
  final T value;

  SecureStorageItem({required this.key, required this.value});
}
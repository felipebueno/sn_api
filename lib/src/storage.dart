abstract class SnStorage {
  Future<void> set(String key, String value);
  Future<String?> getString(String key);
  Future<bool> remove(String key);
  Future<bool> clear();
}

class InMemoryStorage implements SnStorage {
  final Map<String, String> _store = {};

  @override
  Future<void> set(String key, String value) async {
    _store[key] = value;
  }

  @override
  Future<String?> getString(String key) async {
    return _store[key];
  }

  @override
  Future<bool> remove(String key) async {
    _store.remove(key);
    return true;
  }

  @override
  Future<bool> clear() async {
    _store.clear();
    return true;
  }
}

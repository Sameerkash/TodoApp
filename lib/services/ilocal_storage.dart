abstract class ILocalStorage {
  Future<void> saveInt(String key, int val);
}

class FakeLocalStorage implements ILocalStorage {
  @override
  Future<void> saveInt(String key, int val) async {
    print('saving $val to $key');
  }
}
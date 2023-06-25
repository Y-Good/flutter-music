import 'package:get_storage/get_storage.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 13:49
/// @UpdateDate: 2022-08-08 13:49
class GStorage {
  GStorage._();

  static GetStorage _storage = GetStorage();

  ///写入
  static Future<void> write(String key, dynamic value) async {
    try {
      await _storage.write(key, value);
    } catch (e) {
      rethrow;
    }
  }

  ///获取
  static T? read<T>(String key) {
    try {
      return _storage.read<T>(key);
    } catch (e) {
      rethrow;
    }
  }

  ///删
  static void remove(String key) {
    _storage.remove(key);
  }
}

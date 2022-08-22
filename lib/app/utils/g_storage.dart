import 'package:get_storage/get_storage.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 13:49
/// @UpdateDate: 2022-08-08 13:49
class GStorage {
  GStorage._();
  static GetStorage storage = GetStorage();

  ///写入
  static void write(String key, dynamic value) {
    storage.write(key, value);
  }

  ///获取
  static dynamic read<T>(String key) {
    return storage.read<T>(key);
  }

  ///删
  static void remove(String key) {
    storage.remove(key);
  }
}

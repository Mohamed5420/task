import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalStorage {
  final storage = const FlutterSecureStorage(aOptions: AndroidOptions(encryptedSharedPreferences: true));

  Future<void> setItem(String key, String? value) async {
    await storage.write(key: key, value: value);
  }

  Future<String?> getItem(String key) async {
    return await storage.read(key: key);
  }

  Future<void> deleteItem(String key) async {
    await storage.delete(key: key);
  }

  Future<Map<String, dynamic>> readAllItems() async {
    return await storage.readAll();
  }

  Future<void> deleteAllItems() async {
    await storage.deleteAll();
    }
}
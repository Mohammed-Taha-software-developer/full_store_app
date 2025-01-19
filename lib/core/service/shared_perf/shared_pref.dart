import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._internal();

  static final SharedPref instance = SharedPref._internal();

  late SharedPreferences _sharedPreferences;

  /// Initialize the SharedPreferences instance.
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Get string value from SharedPreferences.
  String? getString(String key) => _sharedPreferences.getString(key);

  /// Set string value in SharedPreferences.
  Future<void> setString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  /// Get boolean value from SharedPreferences.
  bool? getBoolean(String key) => _sharedPreferences.getBool(key);

  /// Set boolean value in SharedPreferences.
  Future<void> setBoolean(String key, bool value) async {
    await _sharedPreferences.setBool(key, value);
  }

  /// Get int value from SharedPreferences.
  int? getInt(String key) => _sharedPreferences.getInt(key);

  /// Set int value in SharedPreferences.
  Future<void> setInt(String key, int value) async {
    await _sharedPreferences.setInt(key, value);
  }

  /// Remove a specific preference.
  Future<void> remove(String key) async {
    await _sharedPreferences.remove(key);
  }

  /// Clear all preferences.
  Future<void> clear() async {
    await _sharedPreferences.clear();
  }

  /// Check if a preference exists.
  bool contains(String key) => _sharedPreferences.containsKey(key);
}

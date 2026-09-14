import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _prefs;

  static const String _keyIsLoggedIn = 'isLoggedIn';
  static const String _keyUsername = 'username';
  static const String _keyEmail = 'email';
  static const String _keyRole = 'role';
  static const String _keyFavorites = 'favorites';

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get isLoggedIn => _prefs.getBool(_keyIsLoggedIn) ?? false;
  static String? get username => _prefs.getString(_keyUsername);
  static String? get email => _prefs.getString(_keyEmail);
  static String get role => _prefs.getString(_keyRole) ?? 'user';
  
  static List<int> get favorites {
    final String? favString = _prefs.getString(_keyFavorites);
    if (favString == null) return [];
    try {
      final List<dynamic> decoded = jsonDecode(favString);
      return decoded.map((e) => e as int).toList();
    } catch (e) {
      return [];
    }
  }

  static Future<void> saveSession({
    required String username,
    required String email,
    required String role,
  }) async {
    await _prefs.setBool(_keyIsLoggedIn, true);
    await _prefs.setString(_keyUsername, username);
    await _prefs.setString(_keyEmail, email);
    await _prefs.setString(_keyRole, role);
  }

  static Future<void> clearSession() async {
    await _prefs.remove(_keyIsLoggedIn);
    await _prefs.remove(_keyUsername);
    await _prefs.remove(_keyEmail);
    await _prefs.remove(_keyRole);
    // Optionally remove favorites, but let's keep them
  }

  static Future<void> toggleFavorite(int productId) async {
    final List<int> currentFavs = favorites;
    if (currentFavs.contains(productId)) {
      currentFavs.remove(productId);
    } else {
      currentFavs.add(productId);
    }
    await _prefs.setString(_keyFavorites, jsonEncode(currentFavs));
  }

  static bool isFavorite(int productId) {
    return favorites.contains(productId);
  }
}

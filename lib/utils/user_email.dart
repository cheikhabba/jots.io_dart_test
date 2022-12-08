import 'package:shared_preferences/shared_preferences.dart';

class UserEmailPref {
  static SharedPreferences? _preferences;

  static const emailKey = "user email";

  static init() async => _preferences = await SharedPreferences.getInstance();

  static Future setEmail(String userEmail) async =>
      await _preferences!.setString(emailKey, userEmail);

  static String? getEmail() => _preferences!.getString(emailKey);
}

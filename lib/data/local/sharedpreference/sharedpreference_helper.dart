

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  saveStringPref(String prefKey, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(prefKey, value);
  }

  getStringPref(String prefKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(prefKey);
  }

  saveIntPref(String prefKey, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(prefKey, value);
  }

  getIntPref(String prefKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(prefKey);
  }

  saveDoublePref(String prefKey, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(prefKey, value);
  }

  getDoublePref(String prefKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(prefKey);
  }

  saveBooleanPref(String prefKey, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(prefKey, value);
  }

  getBooleanPref(String prefKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(prefKey);
  }

  clearPrefData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class YataSharedPreferences {
  YataSharedPreferences._();

  static final YataSharedPreferences _yataSharedPreferences =
      YataSharedPreferences._();

  static YataSharedPreferences getInstance() {
    return _yataSharedPreferences;
  }

  addStringToSharedPreference(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  Future<String> getStringValuesFromSharedPreference(String keyOfValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(keyOfValue)!;
    return stringValue;
  }

  removeStringValues(String keyOfValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(keyOfValue);
  }

  addIntToSharedPreference(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  getIntValuesFromSharedPreference(String keOfValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int intValue = prefs.getInt(keOfValue)!;
    return intValue;
  }

  removeIntValues(String keyOfValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(keyOfValue);
  }

  addDoubleToSharedPreference(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  getDoubleValuesFromSharedPreference(String keyOkValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return double
    double doubleValue = prefs.getDouble(keyOkValue)!;
    return doubleValue;
  }

  removeDoubleValues(String keyOfValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(keyOfValue);
  }

  addBoolToSharedPreference(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  getBoolValuesFromSharedPreference(String keOfValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool boolValue = prefs.getBool(keOfValue)!;
    return boolValue;
  }

  removeBoolValues(String keyOfValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(keyOfValue);
  }

  removeAllValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  checkIfValueIsPresent(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool checkValue = prefs.containsKey(key);
    return checkValue;
  }
}

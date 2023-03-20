import 'package:alfateam/src/core/utils/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  final SharedPreferences prefs;
  const PrefsService(this.prefs);

// TOKEN
  String? readToken() {
    String? token = prefs.getString(PrefsKey.token);
    return token;
  }

  Future<void> writeToken(String token) async {
    await prefs.setString(PrefsKey.token, token);
  }

  Future<void> removeToken() async {
    await prefs.remove(PrefsKey.token);
  }

  bool readIsFirstTime() {
    bool? isFirstTime = prefs.getBool(PrefsKey.firstTime);
    if (isFirstTime == null) {
      return true;
    } else {
      return isFirstTime;
    }
  }

  Future<void> writeIsFirstTime(bool isFirstTime) async {
    await prefs.setBool(PrefsKey.firstTime, isFirstTime);
  }
}

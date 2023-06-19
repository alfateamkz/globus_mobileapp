// import 'package:shared_preferences/shared_preferences.dart';

// class PrefsService {
//   final SharedPreferences prefs;
//   const PrefsService(this.prefs);

// // // isLoggedIn
// //   bool readIsLoggedIn() {
// //     String? email = readEmail();
// //     if (email == null) {
// //       return false;
// //     } else {
// //       return true;
// //     }
// //   }

// //   Future<void> writeIsLoggedIn(bool isLoggedIn) async {
// //     await prefs.setBool(PrefsKey.isLoggedIn, isLoggedIn);
// //   }



// // user id
//   String? readUserId() {
//     String? userId = prefs.getString(PrefsKey.userId);
//     return userId;
//   }

//   Future<void> writeUserId(String userId) async {
//     await prefs.setString(PrefsKey.userId, userId);
//   }

//   Future<void> removeUserId() async {
//     await prefs.remove(PrefsKey.userId);
//   }



// }

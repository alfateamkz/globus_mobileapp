
// import 'dart:io' show HttpStatus;

// import 'base/base_api_repository.dart';

// class AuthRepositoryImpl extends BaseApiRepository implements AuthRepository {
//   final ApiService _apiService;
//   final PrefsRepository _prefsService;
//   AuthRepositoryImpl(this._apiService, this._prefsService);

//   @override
//   Future<DataState<AuthResponse>> userLogin({
//     required AuthRequest request,
//   }) {
//     return getStateOf<AuthResponse>(
//         request: () => _apiService.userLogin(request),
//         statusCode: HttpStatus.created);
//   }

//   @override
//   Future<DataState<Profile>> profileEdit({
//     required ProfileEditRequest request,
//   }) {
//     final String userId = _prefsService.getId() ?? '';
//     return getStateOf<Profile>(
//       request: () => _apiService.profileEdit(
//         userId,
//         request,
//       ),
//     );
//   }

//   // @override
//   // Future<bool> isLoggedIn() async {
//   //   final Auth? auth = _storageService.getAuth();
//   //   if (auth?.accessToken != '') {
//   //     return true;
//   //   } else {
//   //     return false;
//   //   }
//   // }
// }

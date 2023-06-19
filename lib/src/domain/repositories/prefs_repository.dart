abstract class PrefsRepository {
  Future<void> setId(String userId);
  String? getId();
}

class InitializationRepository {
  // region [Initialize]
  static const String TAG = '[InitializationRepository]';

  InitializationRepository._privateConstructor();

  static final InitializationRepository _instance = InitializationRepository._privateConstructor();

  static InitializationRepository get instance => _instance;
  // endregion

  Future<void> initialization() async {
    await Future.delayed(Duration(seconds: 1));

    return;
  }
}
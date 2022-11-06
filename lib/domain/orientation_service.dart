abstract class OrientationService {
  Future<void> setOrientation(List<AppOrientation> orientations);
}

enum AppOrientation {
  portraitUp,

  /// The orientation that is 90 degrees clockwise from [portraitUp].
  landscapeLeft,

  /// The orientation that is 180 degrees from [portraitUp].
  portraitDown,

  /// The orientation that is 90 degrees counterclockwise from [portraitUp].
  landscapeRight,
}

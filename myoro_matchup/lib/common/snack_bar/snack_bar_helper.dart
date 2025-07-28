import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Helper class to use snack bars.
final class SnackBarHelper {
  /// Shows a snack bar.
  static void showSnackBar({
    Duration duration = MyoroSnackBarContainer.durationDefaultValue,
    required MyoroSnackBar snackBar,
  }) {
    navigatorKey.currentContext?.showSnackBar(duration: duration, snackBar: snackBar);
  }

  /// Hides a snack bar if one is active.
  static void closeSnackBar() {
    navigatorKey.currentContext?.closeSnackBar();
  }
}

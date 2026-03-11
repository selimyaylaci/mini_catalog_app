import '../../_core_exports.dart';

class AppPaddings {
  AppPaddings._();

  static const EdgeInsets defaultPadding = EdgeInsets.all(16.0);
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: 16.0,
  );

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(
    vertical: 16.0,
  );
  static const EdgeInsets smallPadding = EdgeInsets.all(8.0);
  static const EdgeInsets largePadding = EdgeInsets.all(24.0);
  static const SizedBox smallPaddingHeight = SizedBox(height: 8.0);
  static const SizedBox mediumPaddingHeight = SizedBox(height: 16.0);
  static const SizedBox largePaddingHeight = SizedBox(height: 24.0);
}

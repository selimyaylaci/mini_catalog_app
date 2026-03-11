import '../../_core_exports.dart';

enum AppFonts { light, regular, medium, semibold, bold }

extension AppFontsExtension on AppFonts {
  FontWeight get toWeight {
    switch (this) {
      case AppFonts.light:
        return FontWeight.w300;
      case AppFonts.regular:
        return FontWeight.w400;
      case AppFonts.medium:
        return FontWeight.w500;
      case AppFonts.semibold:
        return FontWeight.w600;
      case AppFonts.bold:
        return FontWeight.w700;
    }
  }

  String get toText {
    switch (this) {
      case AppFonts.light:
        return "light";
      case AppFonts.regular:
        return "regular";
      case AppFonts.medium:
        return "medium";
      case AppFonts.semibold:
        return "semibold";
      case AppFonts.bold:
        return "bold";
    }
  }
}

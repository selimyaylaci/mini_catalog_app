import '../../_core_exports.dart';

class AppTextStyles {
  static final AppTextStyles _instance = AppTextStyles._init();
  AppTextStyles._init();

  factory AppTextStyles() => _instance;

  // Headline 1
  static const double _headline1FontSize = 28;

  static final TextStyle headline1Bold = TextStyle(
    fontSize: _headline1FontSize,
    fontFamily: AppFonts.bold.toText,
    color: AppColors.main,
  );

  static final TextStyle headline1Semibold = TextStyle(
    fontSize: _headline1FontSize,
    fontFamily: AppFonts.semibold.toText,
    color: AppColors.main,
  );

  static final TextStyle headline1Medium = TextStyle(
    fontSize: _headline1FontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );

  // Headline 2
  static const double _headline2FontSize = 20;

  static final TextStyle headline2Semibold = TextStyle(
    fontSize: _headline2FontSize,
    color: AppColors.main,
    fontFamily: "EuclidCircularB",
    fontWeight: FontWeight.w600,
  );

  static final TextStyle headline2Medium = TextStyle(
    fontSize: _headline2FontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );

  // Headline 3
  static const double _headline3FontSize = 18;

  static final TextStyle headline3bold = TextStyle(
    fontSize: _headline3FontSize,
    fontFamily: AppFonts.bold.toText,
    color: AppColors.main,
  );

  static final TextStyle headline3Semibold = TextStyle(
    fontSize: _headline3FontSize,
    fontFamily: AppFonts.semibold.toText,
    color: AppColors.main,
  );

  static final TextStyle headline3Medium = TextStyle(
    fontSize: _headline3FontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );

  // Body 1
  static const double _body1FontSize = 16;

  static final TextStyle body1Semibold = TextStyle(
    fontSize: _body1FontSize,
    fontFamily: AppFonts.semibold.toText,
    color: AppColors.main,
  );

  static final TextStyle body1Medium = TextStyle(
    fontSize: _body1FontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );

  static final TextStyle body1Regular = TextStyle(
    fontSize: _body1FontSize,
    fontFamily: AppFonts.regular.toText,
    color: AppColors.main,
  );

  // Body 2
  static const double _body2FontSize = 14;

  static final TextStyle body2Bold = TextStyle(
    fontSize: _body2FontSize,
    fontFamily: AppFonts.bold.toText,
    color: AppColors.main,
  );

  static final TextStyle body2Semibold = TextStyle(
    fontSize: _body2FontSize,
    fontFamily: AppFonts.semibold.toText,
    color: AppColors.main,
  );

  static final TextStyle body2Medium = TextStyle(
    fontSize: _body2FontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );

  static final TextStyle body2Regular = TextStyle(
    fontSize: _body2FontSize,
    fontFamily: AppFonts.regular.toText,
    color: AppColors.main,
  );

  // Body 3
  static const double _body3FontSize = 13;

  static final TextStyle body3Bold = TextStyle(
    fontSize: _body3FontSize,
    color: AppColors.main,
    fontFamily: "EuclidCircularB",
    fontWeight: FontWeight.w700,
  );

  static final TextStyle body3Semibold = TextStyle(
    fontSize: _body3FontSize,
    fontFamily: AppFonts.semibold.toText,
    color: AppColors.main,
  );

  static final TextStyle body3Medium = TextStyle(
    fontSize: _body3FontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );

  static final TextStyle body3Regular = TextStyle(
    fontSize: _body3FontSize,
    fontFamily: AppFonts.regular.toText,
    color: AppColors.main,
  );

  // Body 4
  static const double _body4FontSize = 10;

  static final TextStyle body4Medium = TextStyle(
    fontSize: _body4FontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );

  // Button
  static const double _buttonFontSize = 16;

  static final TextStyle button = TextStyle(
    fontSize: _buttonFontSize,
    fontFamily: AppFonts.medium.toText,
    color: AppColors.main,
  );
}

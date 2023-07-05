// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color darkText;
  late Color pageBackground;
  late Color grayIcon;
  late Color lightText;
  late Color darkLines;
  late Color lightLines;
  late Color primaryBtnText;
  late Color lineColor;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;
  late Color customColor1;
  late Color backgroundComponents;
  late Color btnText;
  late Color customColor3;
  late Color customColor4;
  late Color white;
  late Color background;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFC0004);
  late Color secondary = const Color(0xFFFC0004);
  late Color tertiary = const Color(0xFF14181B);
  late Color alternate = const Color(0xFFDBE2E7);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF616161);
  late Color accent2 = const Color(0xFF757575);
  late Color accent3 = const Color(0xFFE0E0E0);
  late Color accent4 = const Color(0xFFEEEEEE);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color darkText = Color(0xFF14181B);
  late Color pageBackground = Color(0xFFF1F4F8);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color lightText = Color(0xFFFFFFFF);
  late Color darkLines = Color(0xFF262D34);
  late Color lightLines = Color(0xFFDEE2E7);
  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
  late Color customColor1 = Color(0xFF2FB73C);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color background = Color(0xFF1D2429);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Kyrilla';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Kyrilla';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Kyrilla';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Kyrilla';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Kyrilla';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Kyrilla';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Kyrilla';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Kyrilla';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Kyrilla';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get labelLargeFamily => 'Kyrilla';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Kyrilla';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Kyrilla';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Kyrilla';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Kyrilla';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkLines,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'Kyrilla';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.grayIcon,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Kyrilla';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Kyrilla';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Kyrilla';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Kyrilla';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Kyrilla';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Kyrilla';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Kyrilla';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Kyrilla';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Kyrilla';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get labelLargeFamily => 'Kyrilla';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Kyrilla';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Kyrilla';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Kyrilla';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Kyrilla';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkLines,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'Kyrilla';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.grayIcon,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Kyrilla';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Kyrilla';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Kyrilla';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Kyrilla';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Kyrilla';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Kyrilla';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Kyrilla';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Kyrilla';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Kyrilla';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get labelLargeFamily => 'Kyrilla';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Kyrilla';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Kyrilla';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Kyrilla';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Kyrilla';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.darkLines,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'Kyrilla';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Kyrilla',
        color: theme.grayIcon,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}

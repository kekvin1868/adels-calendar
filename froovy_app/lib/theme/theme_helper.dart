import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../core/utils/pref_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  // Current `app` theme.
  var _appTheme = PrefUtils().getThemeData();
  
  // Map custom color themes & color schemes.
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };
  
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };
  
  // Retrieve `lightCode` colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }
  
  ThemeData _getThemeData() {
    var colorScheme = _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: colorScheme.onPrimary.withOpacity(1),
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.onPrimary.withOpacity(1),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.yellow50,
      ),
    );
  }

  // Returns `lightCode` colors of the current theme.
  LightCodeColors themeColor() => _getThemeColors();
  
  // Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}


class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyMedium: TextStyle(
      color: appTheme.yellow50,
      fontSize: 14.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.yellow50,
      fontSize: 10.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 64.fSize,
      fontFamily: 'Inter Display',
      fontWeight: FontWeight.w800,
    ),
    displayMedium: TextStyle(
      color: appTheme.yellow50,
      fontSize: 40.fSize,
      fontFamily: 'Epilogue',
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 36.fSize,
      fontFamily: 'Epilogue',
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 32.fSize,
      fontFamily: 'Epilogue',
      fontWeight: FontWeight.w800,
    ),
    headlineSmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 24.fSize,
      fontFamily: 'Epilogue',
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 12.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 11.fSize,
      fontFamily: 'Epilogue',
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 20.fSize,
      fontFamily: 'Epilogue',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 16.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      color: appTheme.yellow50.withValues(alpha: 0.25),
      fontSize: 14.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
  );
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF2A8B29),
    secondaryContainer: Color(0XBF2A8B59),
    onPrimary: Color(0X4C1C1C1C),
    onPrimaryContainer: Color(0XFFE2A600)
  );
}

class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
  
  // Blue Gray
  Color get blueGray100 => Color(0XFFD9D9D9);
  
  // Gray
  Color get gray90026 => Color(0X26282828);
  
  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
  
  // Yellow
  Color get yellow50 => Color(0XFFFCFDEA);
}
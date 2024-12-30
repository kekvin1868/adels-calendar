import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Black Decorations
  static BoxDecoration get black =>
      BoxDecoration(
        color: theme.colorScheme.onPrimary.withValues(alpha: 1),
      );
  
  // Filling Decorations
  static BoxDecoration get fillBlueGray =>
      BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillOnPrimary =>
      BoxDecoration(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.25),
      );
  static BoxDecoration get fillOnPrimary1 =>
      BoxDecoration(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.15),
      );
  
  // Main Decorations
  static BoxDecoration get main1 =>
      BoxDecoration(
        color: appTheme.yellow50,
      );
  static BoxDecoration get main2 =>
      BoxDecoration(
        color: theme.colorScheme.primary,
      );
  
  // Outline Decorations
  static BoxDecoration get outline => 
      BoxDecoration(
        color: appTheme.yellow50.withValues(alpha: 0.6),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: theme.colorScheme.primary,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(alpha: 0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          0,
        ),
      )
    ],
  );
  static BoxDecoration get outlineGray => BoxDecoration(
    color: appTheme.yellow50,
    boxShadow: [
      BoxShadow(
        color: appTheme.gray90026,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          0,
        ),
      )
    ],
  );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
    border: Border.all(
      color: theme.colorScheme.onPrimary.withValues(alpha: 1),
      width: 2.h,
    ),
  );
  static BoxDecoration get outline1 => BoxDecoration(
    color: appTheme.yellow50.withValues(alpha: 0.6),
  );
}

class BorderRadiusStyle {
  static BorderRadius get circular10 => BorderRadius.circular(10.h);
  static BorderRadius get circular102 => BorderRadius.circular(102.h);
  static BorderRadius get circular18 => BorderRadius.circular(18.h);
  static BorderRadius get circular26 => BorderRadius.circular(26.h);
  static BorderRadius get roundedBorder22 => BorderRadius.circular(22.h);
  static BorderRadius get roundedBorder34 => BorderRadius.circular(34.h);
}
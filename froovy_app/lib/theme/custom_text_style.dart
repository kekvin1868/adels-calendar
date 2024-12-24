import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }
  
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

class CustomTextStyles {
  static TextStyle get bodyMediumEpilogue =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodyMediumEpilogueOnPrimary =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 1.0),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodyMediumEpilogueOnPrimary13 =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 1.0),
        fontSize: 13.fSize,
      );
  static TextStyle get bodyMediumEpilogueOnPrimary15 =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 1.0),
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumEpilogueOnPrimaryLight =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 1.0),
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodyMediumWhiteA700 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static TextStyle get bodySmall11 =>
      theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static TextStyle get bodySmall12 => 
      theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallWhiteA700 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  
  // Display Text Style
  static TextStyle get displayLargeEpilogue =>
      theme.textTheme.displayLarge!.epilogue.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get displayLargeEpilogueOnPrimary =>
      theme.textTheme.displayLarge!.epilogue.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get displayMediumInterOnPrimary =>
      theme.textTheme.displayMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withValues(alpha: 1.0),
        fontSize: 48.fSize,
      );
  static TextStyle get displaySmallExtraBold => 
      theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w800,
      );
  
  // Headline text style
  static TextStyle get headlineLargeBold =>
      theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get headlineLargeYellow500 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.yellow50,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineSmallInterYellow50 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.yellow50,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headlineSmallOnPrimary =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withValues(alpha: 1.0),
      );
  static TextStyle get headlineSmallSemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headlineSmallYellow50 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.yellow50,
        fontWeight: FontWeight.w600,
      );
  
  // Label Text Style
  static TextStyle get labelLargeEpilogue =>
      theme.textTheme.labelLarge!.epilogue.copyWith(
        fontSize: 13.fSize,
      );
  static TextStyle get labelLargeEpilogueOnPrimary =>
      theme.textTheme.labelLarge!.epilogue.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 1.0),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500
      );
  static TextStyle get labelLargeOnPrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 1.0),
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelMediumInter =>
      theme.textTheme.labelMedium!.inter.copyWith(
        fontSize: 10.fSize,
      );
  static get labelMediumInter_1 => theme.textTheme.labelMedium!.inter;
  
  // Title Text Style
  static TextStyle get titleLargeBold =>
      theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  
  static TextStyle get titleLargeExtraBold => 
      theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );

  static TextStyle get titleLargeInter =>
      theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w300,
      );

  static TextStyle get titleLargeInterYellow50 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.yellow50,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get titleLargeInterYellow50SemiBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.yellow50.withValues(alpha: 0.75),
        fontWeight: FontWeight.w600,
      );
  
  static TextStyle get titleLargeLight =>
      theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );

  static TextStyle get titleLargeSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleLargeYellow50 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow50,
      );

  static TextStyle get titleMediumMedium =>
      theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.5),
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumYellow50 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow50.withValues(alpha: 0.5),
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallEpilogueOnPrimary =>
      theme.textTheme.titleSmall!.epilogue.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.5),
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleSmallWhiteA700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallYellow50 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow50,
        fontWeight: FontWeight.w800,
      );

  static TextStyle get titleSmallYellow50Bold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow50,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallYellow50Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow50,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleSmallYellow50_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow50,
      );
}
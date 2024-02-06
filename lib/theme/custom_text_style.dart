import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGreen800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green800,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallLime800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lime800,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700Regular10 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.64),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700Regular12 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.64),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700Regular12_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700Regular_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700Regular_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelMediumLime800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lime800,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
  // Poppins text style
  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsWhiteA700Regular => TextStyle(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

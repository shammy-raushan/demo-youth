import 'package:flutter/material.dart';
import 'package:sushil_s_application5/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90008,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green800.withOpacity(0.1),
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray90004,
            appTheme.gray90004.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.43),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray900,
            appTheme.gray900.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.57, 0.36),
          end: Alignment(0.05, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.gray300,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.black900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.24),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.black900,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

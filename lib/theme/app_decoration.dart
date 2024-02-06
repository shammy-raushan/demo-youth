import 'package:flutter/material.dart';
import 'package:sushant_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );

  // Gradient decorations
  static BoxDecoration get gradientDeepPurpleAToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.17),
          end: Alignment(0.61, 1.12),
          colors: [
            appTheme.deepPurpleA200,
            appTheme.lightBlue800,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.05),
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 0.86),
          colors: [
            appTheme.gray900,
            appTheme.gray90000,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.18, -0.16),
          end: Alignment(0.67, 1.16),
          colors: [
            appTheme.pink500,
            appTheme.red400,
          ],
        ),
      );
  static BoxDecoration get gradientTealAToLime => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.18, -0.16),
          end: Alignment(0.67, 1.16),
          colors: [
            appTheme.tealA400,
            appTheme.lime900,
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
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.black90001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.05),
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration();
  static BoxDecoration get outline2 => BoxDecoration();
  static BoxDecoration get outline3 => BoxDecoration();
  static BoxDecoration get outline4 => BoxDecoration(
        color: appTheme.black90001,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
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

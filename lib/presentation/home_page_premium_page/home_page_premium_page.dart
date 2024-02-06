import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:sushil_s_application5/core/app_export.dart';
import 'package:sushil_s_application5/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:sushil_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:sushil_s_application5/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sushil_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:sushil_s_application5/widgets/custom_drop_down.dart';
import 'package:sushil_s_application5/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePagePremiumPage extends StatelessWidget {
  HomePagePremiumPage({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 24.v),
              child: Column(
                children: [
                  _buildAccountSummary(context),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildThirtyNine(
                      context,
                      accountText: "Quick Actions",
                      addAccountText: "Edit",
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildQuickActions(context),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Connect with RM".toUpperCase(),
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildConnectWithRM(context),
                  SizedBox(height: 23.v),
                  _buildAccounts1(context),
                  SizedBox(height: 24.v),
                  _buildCards(context),
                  SizedBox(height: 23.v),
                  _buildDoMoreWithABK(context),
                  SizedBox(height: 16.v),
                  _buildHomePagePremium(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgFrame1171280708,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarTitle(
        text: "Welcome Ramy!",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame1410115482,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 23.v,
            right: 23.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLogoutFill0Wg,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 23.v,
            right: 47.h,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildAccountSummary(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 248.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 23.v,
                  ),
                  decoration: AppDecoration.gradientGrayToGray,
                  child: Text(
                    "Account Summary".toUpperCase(),
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 187.v,
                  width: 351.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 326.h,
                            bottom: 16.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "1700.000",
                                style: theme.textTheme.headlineMedium,
                              ),
                              SizedBox(height: 8.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage4208,
                                height: 84.v,
                                width: 25.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 187.v,
                              width: 286.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: OutlineGradientButton(
                                      padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                        right: 1.h,
                                        bottom: 1.v,
                                      ),
                                      strokeWidth: 1.h,
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.lime80001,
                                          appTheme.amberA10033,
                                        ],
                                      ),
                                      corners: Corners(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: Container(
                                        height: 187.v,
                                        width: 286.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.black900,
                                          borderRadius: BorderRadius.circular(
                                            8.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 1.h,
                                        right: 1.h,
                                        bottom: 1.v,
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 1.v),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            ImageConstant.imgGroup1171282602,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            height: 81.v,
                                            width: 283.h,
                                            child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgVector3,
                                                  height: 78.v,
                                                  width: 283.h,
                                                  alignment:
                                                      Alignment.topCenter,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 119.h),
                                                    child: SizedBox(
                                                      height: 64.v,
                                                      child: VerticalDivider(
                                                        width: 1.h,
                                                        thickness: 1.v,
                                                        color: appTheme.gray500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 6.v,
                                                    width: 5.h,
                                                    margin: EdgeInsets.only(
                                                      top: 12.v,
                                                      right: 117.h,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        3.h,
                                                      ),
                                                      border: Border.all(
                                                        color:
                                                            appTheme.whiteA700,
                                                        width: 3.h,
                                                        strokeAlign:
                                                            strokeAlignOutside,
                                                      ),
                                                      gradient: LinearGradient(
                                                        begin:
                                                            Alignment(0.5, 0),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.lime800,
                                                          appTheme.yellow300,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5.v),
                                          Container(
                                            width: 253.h,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Opacity(
                                                  opacity: 0.5,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.v),
                                                    child: Text(
                                                      "Aug",
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 33,
                                                ),
                                                Opacity(
                                                  opacity: 0.5,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.v),
                                                    child: Text(
                                                      "Sep",
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 33,
                                                ),
                                                Opacity(
                                                  opacity: 0.5,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.v),
                                                    child: Text(
                                                      "Oct",
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 31.h,
                                                  margin: EdgeInsets.only(
                                                      left: 22.h),
                                                  decoration: AppDecoration
                                                      .outline
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder8,
                                                  ),
                                                  child: OutlineGradientButton(
                                                    padding: EdgeInsets.only(
                                                      left: 1.h,
                                                      top: 1.v,
                                                      right: 1.h,
                                                      bottom: 1.v,
                                                    ),
                                                    strokeWidth: 1.h,
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.lime800,
                                                        appTheme.yellow300,
                                                      ],
                                                    ),
                                                    corners: Corners(
                                                      topLeft:
                                                          Radius.circular(8),
                                                      topRight:
                                                          Radius.circular(8),
                                                      bottomLeft:
                                                          Radius.circular(8),
                                                      bottomRight:
                                                          Radius.circular(8),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 6.h,
                                                        vertical: 1.v,
                                                      ),
                                                      child: Text(
                                                        "Nov",
                                                        style: theme.textTheme
                                                            .labelSmall,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.5,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 25.h,
                                                      top: 2.v,
                                                    ),
                                                    child: Text(
                                                      "Dec",
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 33,
                                                ),
                                                Opacity(
                                                  opacity: 0.5,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.v),
                                                    child: Text(
                                                      "Jan",
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 7.v),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: 246.h,
                                      margin: EdgeInsets.fromLTRB(
                                          24.h, 15.v, 16.h, 150.v),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Opacity(
                                            opacity: 0.5,
                                            child: Text(
                                              "Net Worth",
                                              style: CustomTextStyles
                                                  .bodyMediumWhiteA700,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 4.v),
                                            child: CustomDropDown(
                                              width: 74.h,
                                              icon: Container(
                                                margin:
                                                    EdgeInsets.only(left: 5.h),
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowdown,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                ),
                                              ),
                                              hintText: "November",
                                              items: dropdownItemList,
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 40.v,
                                        right: 16.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 10.v),
                                            child: Text(
                                              "KWD",
                                              style: CustomTextStyles
                                                  .bodyMediumWhiteA700_1,
                                            ),
                                          ),
                                          Container(
                                            width: 50.h,
                                            margin: EdgeInsets.only(
                                              left: 20.h,
                                              bottom: 11.v,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8.h,
                                              vertical: 3.v,
                                            ),
                                            decoration: AppDecoration.fillGreen,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "5.12 %",
                                                  style: CustomTextStyles
                                                      .bodySmallGreen800,
                                                ),
                                                Container(
                                                  height: 7.adaptSize,
                                                  width: 7.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    left: 4.h,
                                                    top: 2.v,
                                                    bottom: 3.v,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgSettings,
                                                        height: 7.adaptSize,
                                                        width: 7.adaptSize,
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height: 4.adaptSize,
                                                        width: 4.adaptSize,
                                                        alignment:
                                                            Alignment.topRight,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 24.h,
                                        top: 36.v,
                                      ),
                                      child: Text(
                                        "2500.000",
                                        style: theme.textTheme.headlineMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 187.v,
                              width: 286.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: OutlineGradientButton(
                                      padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                        right: 1.h,
                                        bottom: 1.v,
                                      ),
                                      strokeWidth: 1.h,
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.lime80001,
                                          appTheme.amberA10033,
                                        ],
                                      ),
                                      corners: Corners(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: Container(
                                        height: 187.v,
                                        width: 286.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.black900,
                                          borderRadius: BorderRadius.circular(
                                            8.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 24.h,
                                          top: 15.v,
                                        ),
                                        child: Text(
                                          "Liabilities",
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 51.v,
                                        right: 86.h,
                                      ),
                                      child: Text(
                                        "KWD",
                                        style: CustomTextStyles
                                            .bodyMediumWhiteA700_1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickActions(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 108.v,
            width: 351.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 108.v,
                        width: 70.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 108.v,
                                width: 70.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray90008,
                                  borderRadius: BorderRadius.circular(
                                    35.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 8.v,
                                  right: 8.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomIconButton(
                                      height: 54.adaptSize,
                                      width: 54.adaptSize,
                                      padding: EdgeInsets.all(11.h),
                                      decoration:
                                          IconButtonStyleHelper.fillBlack,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgTransfer3,
                                      ),
                                    ),
                                    SizedBox(height: 7.v),
                                    Text(
                                      "Pay Me",
                                      style:
                                          CustomTextStyles.bodySmallBluegray100,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 108.v,
                        width: 70.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray90008,
                          borderRadius: BorderRadius.circular(
                            35.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 86.h,
                    right: 195.h,
                  ),
                  child: _buildTen(
                    context,
                    topUp: "Split Bill",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 172.h,
                    right: 109.h,
                  ),
                  child: _buildTen(
                    context,
                    topUp: "Top Up",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 258.h,
                    right: 23.h,
                  ),
                  child: _buildTen(
                    context,
                    topUp: "Transfer",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConnectWithRM(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3464768,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Aziz F. Yassin",
                    style: CustomTextStyles.titleSmallMedium,
                  ),
                ),
                Text(
                  "+1 202 338 0211",
                  style: CustomTextStyles.bodySmallBluegray100,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLogoutFill0Wg24x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 29.h,
              top: 8.v,
              bottom: 8.v,
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: SizedBox(
                height: 40.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
            ),
          ),
          Container(
            width: 71.h,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 4.v,
              bottom: 4.v,
            ),
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder16,
            ),
            child: Row(
              children: [
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLogoutFill0Wg1,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgComponent39,
                  height: 7.v,
                  width: 18.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccounts(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: _buildThirtyNine(
                context,
                accountText: "Accounts",
                addAccountText: "+ Add Account",
              ),
            ),
            SizedBox(height: 14.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 212.v,
                  width: 305.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 32.v,
                          width: 193.h,
                          margin: EdgeInsets.only(top: 1.v),
                          decoration: BoxDecoration(
                            color: appTheme.gray90007,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8.h),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 9.v,
                          width: 82.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 82.h,
                                  child: Divider(
                                    color: appTheme.gray90001,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 9.v,
                                  width: 70.h,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUpload,
                                        height: 9.v,
                                        width: 70.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Opacity(
                                          opacity: 0.5,
                                          child: Text(
                                            "PFF Account",
                                            style: CustomTextStyles
                                                .poppinsWhiteA700Regular,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 32.v,
                          width: 193.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray90007,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8.h),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 32.v,
                          width: 241.h,
                          margin: EdgeInsets.only(top: 17.v),
                          decoration: BoxDecoration(
                            color: appTheme.gray90003,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8.h),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.24),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  -4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 12.v,
                          width: 106.h,
                          margin: EdgeInsets.only(top: 15.v),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 106.h,
                                  child: Divider(
                                    color: appTheme.gray90001,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 12.v,
                                  width: 91.h,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUpload,
                                        height: 12.v,
                                        width: 91.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Opacity(
                                          opacity: 0.5,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 12.h),
                                            child: Text(
                                              "Savings Account",
                                              style: CustomTextStyles
                                                  .poppinsWhiteA700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 32.v,
                          width: 241.h,
                          margin: EdgeInsets.only(bottom: 16.v),
                          decoration: BoxDecoration(
                            color: appTheme.gray90003,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8.h),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withOpacity(0.24),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  -4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 147.v,
                          width: 305.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 12.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.v),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width: 185.h,
                                          margin: EdgeInsets.only(left: 88.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 11.v),
                                                child: Text(
                                                  "**** ****",
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 3.h,
                                                  top: 11.v,
                                                ),
                                                child: Text(
                                                  "1234",
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ),
                                              Spacer(),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgKuwaitKw,
                                                height: 32.adaptSize,
                                                width: 32.adaptSize,
                                                radius: BorderRadius.circular(
                                                  16.h,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 13.v),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 23.h),
                                        child: OutlineGradientButton(
                                          padding: EdgeInsets.only(
                                            left: 1.h,
                                            top: 1.v,
                                            right: 1.h,
                                            bottom: 1.v,
                                          ),
                                          strokeWidth: 1.h,
                                          gradient: LinearGradient(
                                            begin: Alignment(0.5, 0),
                                            end: Alignment(0.5, 1),
                                            colors: [
                                              appTheme.lime800,
                                              appTheme.yellow300,
                                            ],
                                          ),
                                          corners: Corners(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 27.h,
                                              vertical: 6.v,
                                            ),
                                            decoration:
                                                AppDecoration.outline1.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder8,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Opacity(
                                                  opacity: 0.8,
                                                  child: Text(
                                                    "Current Balance",
                                                    style: CustomTextStyles
                                                        .bodySmallWhiteA700Regular10,
                                                  ),
                                                ),
                                                SizedBox(height: 11.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant.img,
                                                      height: 12.v,
                                                      width: 102.h,
                                                      margin: EdgeInsets.only(
                                                        top: 3.v,
                                                        bottom: 2.v,
                                                      ),
                                                    ),
                                                    Text(
                                                      "KWD".toUpperCase(),
                                                      style: CustomTextStyles
                                                          .bodySmallWhiteA700Regular12_1,
                                                    ),
                                                    Opacity(
                                                      opacity: 0.8,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVisibilityOff,
                                                        height: 12.adaptSize,
                                                        width: 12.adaptSize,
                                                        margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 2.v,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 8.v),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: 20.v,
                                  width: 174.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: 4.v,
                                          width: 174.h,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: 174.h,
                                                  child: Divider(
                                                    color: appTheme.gray90001,
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector4x12,
                                                height: 4.v,
                                                width: 12.h,
                                                alignment: Alignment.centerLeft,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector1,
                                                height: 4.v,
                                                width: 12.h,
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 20.v,
                                          width: 150.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUnion,
                                                height: 20.v,
                                                width: 150.h,
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  height: 20.v,
                                                  width: 150.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUnion20x150,
                                                        height: 20.v,
                                                        width: 150.h,
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 1.v),
                                                          child: Text(
                                                            "Salary Account",
                                                            style: CustomTextStyles
                                                                .bodySmallLime800,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: SizedBox(
                    height: 212.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 78.h,
                      endIndent: 78.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 80.v,
                    bottom: 80.v,
                  ),
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.42),
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.53),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Container(
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.53),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Opacity(
                        opacity: 0.2,
                        child: Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.42),
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAccounts1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 248.v,
            width: 337.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Opacity(
                  opacity: 0.3,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 12.v,
                      width: 20.h,
                      margin: EdgeInsets.only(bottom: 100.v),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.46),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 10.v,
                      width: 16.h,
                      margin: EdgeInsets.only(
                        right: 2.h,
                        bottom: 88.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 10.v,
                      width: 16.h,
                      margin: EdgeInsets.only(right: 2.h),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 8.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        right: 4.h,
                        bottom: 78.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.39),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 8.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        top: 114.v,
                        right: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.39),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                _buildAccounts(context),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: SizedBox(
              height: 248.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                indent: 114.h,
                endIndent: 78.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: _buildThirtyNine(
                context,
                accountText: "Cards",
                addAccountText: "+ Add cards",
              ),
            ),
            SizedBox(height: 16.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.black900,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.h,
                    ),
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  child: Container(
                    height: 176.v,
                    width: 305.h,
                    padding: EdgeInsets.symmetric(horizontal: 7.h),
                    decoration: AppDecoration.outline2.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder8,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.3,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUnion175x155,
                            height: 175.v,
                            width: 155.h,
                            alignment: Alignment.centerRight,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 19.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 253.h,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 6.v),
                                          child: Text(
                                            "Current Balance",
                                            style: CustomTextStyles
                                                .bodySmallWhiteA700Regular12,
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.8,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVisibilityOff,
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 12.h,
                                            top: 3.v,
                                            bottom: 9.v,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUser,
                                        height: 24.v,
                                        width: 38.h,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img,
                                      height: 12.v,
                                      width: 102.h,
                                      margin: EdgeInsets.only(
                                        top: 1.v,
                                        bottom: 4.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text(
                                        "KWD".toUpperCase(),
                                        style: CustomTextStyles
                                            .bodySmallWhiteA700Regular12_1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.v),
                                Container(
                                  height: 22.v,
                                  width: 33.h,
                                  decoration: AppDecoration.gradientWhiteAToGray
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                    height: 21.v,
                                    width: 33.h,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                SizedBox(
                                  width: 253.h,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              "Credit Card",
                                              style: CustomTextStyles
                                                  .bodySmallWhiteA700Regular12,
                                            ),
                                          ),
                                          Text(
                                            "**** **** ****",
                                            style: CustomTextStyles
                                                .bodySmallWhiteA700,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 2.h,
                                          top: 17.v,
                                        ),
                                        child: Text(
                                          "1289",
                                          style: CustomTextStyles
                                              .bodySmallWhiteA700,
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 14.v,
                                          bottom: 3.v,
                                        ),
                                        child: Text(
                                          "09/25",
                                          style: CustomTextStyles
                                              .bodySmallWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: SizedBox(
                    height: 176.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 53.h,
                      endIndent: 67.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 55.v,
                    bottom: 69.v,
                  ),
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.42),
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.53),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Container(
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.53),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Opacity(
                        opacity: 0.2,
                        child: Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.42),
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCards(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      decoration: AppDecoration.gradientGrayToGray900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 263.v,
            width: 337.h,
            margin: EdgeInsets.only(top: 23.v),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Opacity(
                  opacity: 0.3,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 12.v,
                      width: 20.h,
                      margin: EdgeInsets.only(top: 112.v),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.46),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 10.v,
                      width: 16.h,
                      margin: EdgeInsets.only(right: 2.h),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 10.v,
                      width: 16.h,
                      margin: EdgeInsets.only(
                        top: 100.v,
                        right: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.42),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 8.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        right: 4.h,
                        bottom: 117.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.39),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 8.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        top: 90.v,
                        right: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.39),
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.3,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBackground,
                    height: 207.v,
                    width: 254.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 26.h),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBackgroundBlack900,
                  height: 186.v,
                  width: 278.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 7.h,
                    bottom: 22.v,
                  ),
                ),
                _buildSixtyTwo(context),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: SizedBox(
              height: 288.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                indent: 114.h,
                endIndent: 118.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoMoreWithABK(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "DO MORE WITH ABK".toUpperCase(),
            style: theme.textTheme.bodyMedium,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "01",
              style: CustomTextStyles.bodySmallWhiteA700Regular_1,
            ),
          ),
          Container(
            height: 3.v,
            width: 40.h,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle40122,
                  height: 1.v,
                  width: 40.h,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle40124,
                  height: 3.v,
                  width: 16.h,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 4.v,
                bottom: 4.v,
              ),
              child: Text(
                "03",
                style: CustomTextStyles.bodySmallWhiteA700Regular_2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomePagePremium(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 7.h),
                              padding: EdgeInsets.symmetric(vertical: 8.v),
                              decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 7.v),
                                  Container(
                                    width: 140.h,
                                    margin: EdgeInsets.only(left: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          padding: EdgeInsets.all(10.h),
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgGroup13,
                                          ),
                                        ),
                                        Container(
                                          height: 16.v,
                                          width: 40.h,
                                          margin: EdgeInsets.only(bottom: 44.v),
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowDownAmber600,
                                                height: 16.v,
                                                width: 40.h,
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 8.h),
                                                  child: Text(
                                                    "New".toUpperCase(),
                                                    style: CustomTextStyles
                                                        .labelSmallBlack900,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20.v),
                                  Container(
                                    height: 61.v,
                                    width: 134.h,
                                    margin: EdgeInsets.only(right: 5.h),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVectorWhiteA700,
                                          height: 56.v,
                                          width: 63.h,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(right: 3.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 59.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 5.v),
                                                child: Text(
                                                  "Family\nBanking",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ),
                                              Container(
                                                height: 36.v,
                                                width: 23.h,
                                                margin: EdgeInsets.only(
                                                  left: 13.h,
                                                  top: 13.v,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorWhiteA70017x23,
                                                      height: 17.v,
                                                      width: 23.h,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorWhiteA70020x23,
                                                      height: 20.v,
                                                      width: 23.h,
                                                      alignment:
                                                          Alignment.topCenter,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorWhiteA70029x23,
                                                      height: 29.v,
                                                      width: 23.h,
                                                      alignment:
                                                          Alignment.topCenter,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 19.v,
                                                width: 18.h,
                                                margin: EdgeInsets.only(
                                                  left: 19.h,
                                                  top: 9.v,
                                                  bottom: 20.v,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorWhiteA70013x17,
                                                      height: 13.v,
                                                      width: 17.h,
                                                      alignment:
                                                          Alignment.topRight,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowRight,
                                                      height: 16.adaptSize,
                                                      width: 16.adaptSize,
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 7.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 6.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 13.h),
                                    child: CustomIconButton(
                                      height: 60.adaptSize,
                                      width: 60.adaptSize,
                                      padding: EdgeInsets.all(10.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 60.v,
                                      width: 137.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorWhiteA70060x74,
                                            height: 60.v,
                                            width: 74.h,
                                            alignment: Alignment.centerRight,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorWhiteA70013x3,
                                            height: 13.v,
                                            width: 3.h,
                                            alignment: Alignment.topRight,
                                            margin:
                                                EdgeInsets.only(right: 45.h),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 132.h,
                                              margin: EdgeInsets.only(
                                                top: 19.v,
                                                right: 5.h,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 2.v,
                                                      bottom: 16.v,
                                                    ),
                                                    child: Text(
                                                      "Offers",
                                                      style: theme
                                                          .textTheme.titleSmall,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorWhiteA70013x3,
                                                    height: 13.v,
                                                    width: 3.h,
                                                    margin: EdgeInsets.only(
                                                        top: 27.v),
                                                  ),
                                                  Container(
                                                    height: 21.v,
                                                    width: 33.h,
                                                    margin: EdgeInsets.only(
                                                      left: 6.h,
                                                      bottom: 19.v,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVectorWhiteA70021x22,
                                                          height: 21.v,
                                                          width: 22.h,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowRight,
                                                          height: 16.adaptSize,
                                                          width: 16.adaptSize,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 16.v,
                            ),
                            decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: CustomIconButton(
                                    height: 60.adaptSize,
                                    width: 60.adaptSize,
                                    padding: EdgeInsets.all(10.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup18,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 17.v,
                                          bottom: 9.v,
                                        ),
                                        child: Text(
                                          "Rewards",
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      Container(
                                        height: 48.v,
                                        width: 62.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTelevision,
                                              height: 48.v,
                                              width: 60.h,
                                              alignment: Alignment.centerLeft,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowRight,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin:
                                                  EdgeInsets.only(bottom: 12.v),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 8.h),
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: CustomIconButton(
                                    height: 60.adaptSize,
                                    width: 60.adaptSize,
                                    padding: EdgeInsets.all(10.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup14,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: 67.v,
                                    width: 132.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorWhiteA70065x65,
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          alignment: Alignment.topRight,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 55.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 6.v),
                                                child: Text(
                                                  "Term \nDeposit",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ),
                                              Container(
                                                height: 32.v,
                                                width: 20.h,
                                                margin: EdgeInsets.only(
                                                  left: 17.h,
                                                  top: 17.v,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorWhiteA70017x23,
                                                      height: 15.v,
                                                      width: 20.h,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorWhiteA70020x23,
                                                      height: 17.v,
                                                      width: 20.h,
                                                      alignment:
                                                          Alignment.topCenter,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVectorWhiteA70029x23,
                                                      height: 25.v,
                                                      width: 20.h,
                                                      alignment:
                                                          Alignment.topCenter,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA70025x12,
                                                height: 25.v,
                                                width: 12.h,
                                                margin: EdgeInsets.only(
                                                  left: 7.h,
                                                  bottom: 25.v,
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowRight,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin: EdgeInsets.only(
                                                  left: 3.h,
                                                  top: 12.v,
                                                  bottom: 21.v,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 1.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                        vertical: 10.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: CustomIconButton(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup15,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 137.h,
                              margin: EdgeInsets.only(left: 13.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 23.v,
                                      bottom: 16.v,
                                    ),
                                    child: Text(
                                      "Offers",
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Container(
                                    height: 60.v,
                                    width: 74.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 19.v,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.imgGroup27,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowRight,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      alignment: Alignment.bottomRight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: 156.h,
                      padding: EdgeInsets.all(7.h),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8.v),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: CustomIconButton(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup14,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 55.h,
                                  margin: EdgeInsets.only(
                                    top: 17.v,
                                    bottom: 8.v,
                                  ),
                                  child: Text(
                                    "Term \nDeposit",
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Container(
                                  height: 67.v,
                                  width: 65.h,
                                  margin: EdgeInsets.only(left: 12.h),
                                  padding: EdgeInsets.symmetric(vertical: 21.v),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup26,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    alignment: Alignment.bottomRight,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTen(
    BuildContext context, {
    required String topUp,
  }) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder35,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillBlack,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup6,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              topUp,
              style: CustomTextStyles.bodySmallBluegray100.copyWith(
                color: appTheme.blueGray100,
              ),
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildThirtyNine(
    BuildContext context, {
    required String accountText,
    required String addAccountText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          accountText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray40001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(
            addAccountText,
            style: theme.textTheme.labelMedium!.copyWith(
              decoration: TextDecoration.underline,
              color: appTheme.whiteA700,
            ),
          ),
        ),
      ],
    );
  }
}

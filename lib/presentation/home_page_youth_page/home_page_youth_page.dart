import '../home_page_youth_page/widgets/accountssection_item_widget.dart';
import '../home_page_youth_page/widgets/creditcardcomponent_item_widget.dart';
import '../home_page_youth_page/widgets/quickcheckoutsection_item_widget.dart';
import '../home_page_youth_page/widgets/transfersection_item_widget.dart';
import '../home_page_youth_page/widgets/userprofilegridsection_item_widget.dart';
import '../home_page_youth_page/widgets/userprofilesection_item_widget.dart';
import 'bloc/home_page_youth_bloc.dart';
import 'models/accountssection_item_model.dart';
import 'models/creditcardcomponent_item_model.dart';
import 'models/home_page_youth_model.dart';
import 'models/quickcheckoutsection_item_model.dart';
import 'models/transfersection_item_model.dart';
import 'models/userprofilegridsection_item_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:sushant_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePageYouthPage extends StatelessWidget {
  const HomePageYouthPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageYouthBloc>(
      create: (context) => HomePageYouthBloc(HomePageYouthState(
        homePageYouthModelObj: HomePageYouthModel(),
      ))
        ..add(HomePageYouthInitialEvent()),
      child: HomePageYouthPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildOffersSection(context),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    indent: 24.h,
                    endIndent: 24.h,
                  ),
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 60.h,
                    child: Divider(
                      color: appTheme.blueGray900,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: _buildNeedsAttentionSection(
                    context,
                    needsAttentionText: "lbl_quick_actions".tr,
                    viewAllText: "lbl_edit".tr,
                  ),
                ),
                SizedBox(height: 15.v),
                _buildTransferSection(context),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_accounts".tr.toUpperCase(),
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildAccountsSection(context),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: _buildNeedsAttentionSection(
                    context,
                    needsAttentionText: "lbl_needs_attention".tr,
                    viewAllText: "lbl_view_all".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildUserProfileSection(context),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_quick_check_out".tr.toUpperCase(),
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 15.v),
                _buildQuickCheckOutSection(context),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_what_s_new_on_abk".tr.toUpperCase(),
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTwo(context),
                SizedBox(height: 24.v),
                _buildCardsSection(context),
                SizedBox(height: 23.v),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_hassala".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumWhiteA700,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildHassalaSection(context),
                SizedBox(height: 23.v),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "msg_do_more_with_abk".tr.toUpperCase(),
                      style: CustomTextStyles.bodyMediumWhiteA700,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildUserProfileGridSection(context),
                SizedBox(height: 8.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroupWhiteA700,
                  height: 163.v,
                  width: 375.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOffersSection(BuildContext context) {
    return Container(
      height: 70.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 107.h,
                vertical: 1.v,
              ),
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.fillBlueGray,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16.v,
                    width: 36.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1603,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1604,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1605,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_2_offers".tr.toUpperCase(),
                      style: CustomTextStyles.bodySmall10,
                    ),
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
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1171280708,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 231.h,
                    top: 4.v,
                    bottom: 4.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLogoutFill0Wg,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                    bottom: 4.v,
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
  Widget _buildTransferSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 95.v,
        child: BlocSelector<HomePageYouthBloc, HomePageYouthState,
            HomePageYouthModel?>(
          selector: (state) => state.homePageYouthModelObj,
          builder: (context, homePageYouthModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount:
                  homePageYouthModelObj?.transfersectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                TransfersectionItemModel model =
                    homePageYouthModelObj?.transfersectionItemList[index] ??
                        TransfersectionItemModel();
                return TransfersectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountsSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 136.v,
        child: BlocSelector<HomePageYouthBloc, HomePageYouthState,
            HomePageYouthModel?>(
          selector: (state) => state.homePageYouthModelObj,
          builder: (context, homePageYouthModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount:
                  homePageYouthModelObj?.accountssectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                AccountssectionItemModel model =
                    homePageYouthModelObj?.accountssectionItemList[index] ??
                        AccountssectionItemModel();
                return AccountssectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 50.v,
        child: BlocSelector<HomePageYouthBloc, HomePageYouthState,
            HomePageYouthModel?>(
          selector: (state) => state.homePageYouthModelObj,
          builder: (context, homePageYouthModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount:
                  homePageYouthModelObj?.userprofilesectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofilesectionItemModel model =
                    homePageYouthModelObj?.userprofilesectionItemList[index] ??
                        UserprofilesectionItemModel();
                return UserprofilesectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickCheckOutSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 104.v,
        child: BlocSelector<HomePageYouthBloc, HomePageYouthState,
            HomePageYouthModel?>(
          selector: (state) => state.homePageYouthModelObj,
          builder: (context, homePageYouthModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount:
                  homePageYouthModelObj?.quickcheckoutsectionItemList.length ??
                      0,
              itemBuilder: (context, index) {
                QuickcheckoutsectionItemModel model = homePageYouthModelObj
                        ?.quickcheckoutsectionItemList[index] ??
                    QuickcheckoutsectionItemModel();
                return QuickcheckoutsectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        decoration: AppDecoration.outline3,
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
              appTheme.whiteA700,
              appTheme.gray90001.withOpacity(0),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 57.h,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    top: 21.v,
                    bottom: 47.v,
                  ),
                  child: Text(
                    "lbl_try_it_new".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.17,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGiphy2,
                  height: 62.adaptSize,
                  width: 62.adaptSize,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    top: 61.v,
                    bottom: 5.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgClipPathGroup,
                  height: 110.v,
                  width: 160.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 20.v,
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
  Widget _buildCardsSection(BuildContext context) {
    return SizedBox(
      height: 261.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 22.v,
              ),
              decoration: AppDecoration.outlineWhiteA,
              child: Opacity(
                opacity: 0.6,
                child: Text(
                  "lbl_cards".tr.toUpperCase(),
                  style: CustomTextStyles.bodyMediumWhiteA700,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 261.v,
              child: BlocSelector<HomePageYouthBloc, HomePageYouthState,
                  HomePageYouthModel?>(
                selector: (state) => state.homePageYouthModelObj,
                builder: (context, homePageYouthModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 61.v,
                      bottom: 24.v,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 16.h,
                      );
                    },
                    itemCount: homePageYouthModelObj
                            ?.creditcardcomponentItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      CreditcardcomponentItemModel model = homePageYouthModelObj
                              ?.creditcardcomponentItemList[index] ??
                          CreditcardcomponentItemModel();
                      return CreditcardcomponentItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHassalaSection(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 110.v,
          width: 571.h,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 196.h,
                      margin: EdgeInsets.only(top: 24.v),
                      decoration: AppDecoration.outline4,
                      child: DottedBorder(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 1.v,
                          right: 1.h,
                          bottom: 1.v,
                        ),
                        strokeWidth: 1.h,
                        dashPattern: [
                          4,
                          4,
                        ],
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 19.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgWorkspaceUnscreen,
                                height: 45.v,
                                width: 44.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Container(
                                width: 115.h,
                                margin: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "msg_learn_how_you_can".tr.toUpperCase(),
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmall10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 110.v,
                      width: 196.h,
                      margin: EdgeInsets.only(left: 24.h),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 23.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration.gradientGrayToGray,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 27.v),
                                  Text(
                                    "lbl_jewellery".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "lbl_444_32".tr,
                                        style: theme.textTheme.titleLarge,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 4.h,
                                          top: 5.v,
                                          bottom: 3.v,
                                        ),
                                        child: Text(
                                          "lbl_500_kwd".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgFrame1171280708Gray90002,
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            radius: BorderRadius.circular(
                              24.h,
                            ),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 24.h),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 196.h,
                      margin: EdgeInsets.only(top: 24.v),
                      decoration: AppDecoration.outline4,
                      child: DottedBorder(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 1.v,
                          right: 1.h,
                          bottom: 1.v,
                        ),
                        strokeWidth: 1.h,
                        dashPattern: [
                          4,
                          4,
                        ],
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 23.h,
                            vertical: 22.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.v,
                                  bottom: 9.v,
                                ),
                                child: Text(
                                  "lbl_add_hassala".tr.toUpperCase(),
                                  style: CustomTextStyles.bodyMediumWhiteA700_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 110.v,
                  width: 196.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 23.h,
                            vertical: 7.v,
                          ),
                          decoration: AppDecoration.gradientGrayToGray,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 26.v),
                              Text(
                                "lbl_tech".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "lbl_24_32".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 6.v,
                                      bottom: 3.v,
                                    ),
                                    child: Text(
                                      "lbl_500_kwd".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgFrame1171280708Gray9000248x48,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        radius: BorderRadius.circular(
                          24.h,
                        ),
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 24.h),
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
  Widget _buildUserProfileGridSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: BlocSelector<HomePageYouthBloc, HomePageYouthState,
            HomePageYouthModel?>(
          selector: (state) => state.homePageYouthModelObj,
          builder: (context, homePageYouthModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 171.v,
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: homePageYouthModelObj
                      ?.userprofilegridsectionItemList.length ??
                  0,
              itemBuilder: (context, index) {
                UserprofilegridsectionItemModel model = homePageYouthModelObj
                        ?.userprofilegridsectionItemList[index] ??
                    UserprofilegridsectionItemModel();
                return UserprofilegridsectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildNeedsAttentionSection(
    BuildContext context, {
    required String needsAttentionText,
    required String viewAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          needsAttentionText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray40001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(
            viewAllText,
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

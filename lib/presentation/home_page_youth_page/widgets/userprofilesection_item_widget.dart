import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:sushant_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 241.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 50.v,
          width: 241.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 2.v),
                  decoration: AppDecoration.outline,
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
                      end: Alignment(0.5, 1.81),
                      colors: [
                        appTheme.red600,
                        appTheme.red600.withOpacity(0),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 5.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: userprofilesectionItemModelObj
                                ?.completeKYCImage,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 6.v),
                          ),
                          Opacity(
                            opacity: 0.3,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: SizedBox(
                                height: 36.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 11.h,
                              top: 13.v,
                              bottom: 4.v,
                            ),
                            child: Text(
                              userprofilesectionItemModelObj.completeKYCText!,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                              top: 9.v,
                              right: 4.h,
                              bottom: 11.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: userprofilesectionItemModelObj?.highPriorityImage1,
                height: 3.v,
                width: 111.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 46.h),
              ),
              CustomImageView(
                imagePath: userprofilesectionItemModelObj?.highPriorityImage2,
                height: 15.v,
                width: 101.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 51.h),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 67.h),
                  child: Text(
                    userprofilesectionItemModelObj.highPriorityText!,
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

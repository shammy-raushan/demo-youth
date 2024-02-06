import "../models/creditcardcomponent_item_model.dart";
import 'package:flutter/material.dart';
import 'package:sushant_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CreditcardcomponentItemWidget extends StatelessWidget {
  CreditcardcomponentItemWidget(
    this.creditcardcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreditcardcomponentItemModel creditcardcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    var userImage = creditcardcomponentItemModelObj.userImage;
    return SizedBox(
      width: 156.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 176.v,
          width: 156.h,
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          decoration: AppDecoration.gradientDeepPurpleAToLightBlue,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.3,
                child: CustomImageView(
                  imagePath: creditcardcomponentItemModelObj.cardImage,
                  height: 176.v,
                  width: 148.h,
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: userImage,
                        height: 24.v,
                        width: 38.h,
                      ),
                      SizedBox(height: 31.v),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          creditcardcomponentItemModelObj.cardText!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              top: 8.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 8.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 8.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 8.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              creditcardcomponentItemModelObj.numberText!,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 13.v),
                      Row(
                        children: [
                          Container(
                            height: 22.v,
                            width: 33.h,
                            decoration:
                                AppDecoration.gradientWhiteAToGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 21.v,
                              width: 33.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 39.h,
                              top: 2.v,
                            ),
                            child: Text(
                              creditcardcomponentItemModelObj.expiryText!,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
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
}

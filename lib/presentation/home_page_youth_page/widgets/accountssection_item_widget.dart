import '../models/accountssection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sushant_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AccountssectionItemWidget extends StatelessWidget {
  AccountssectionItemWidget(
    this.accountssectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountssectionItemModel accountssectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 294.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 136.v,
          width: 294.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAbstractPattern,
                height: 124.v,
                width: 294.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 12.h,
                    right: 35.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 15.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup14,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Opacity(
                            opacity: 0.8,
                            child: Text(
                              accountssectionItemModelObj.currentBalanceText!,
                              style: CustomTextStyles.bodySmallBlack9000110,
                            ),
                          ),
                          Opacity(
                            opacity: 0.8,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVisibilityOff,
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              margin: EdgeInsets.only(left: 12.h),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: accountssectionItemModelObj?.kwdImage,
                            height: 12.v,
                            width: 102.h,
                            margin: EdgeInsets.only(
                              top: 1.v,
                              bottom: 4.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              accountssectionItemModelObj.kwdText!,
                              style: CustomTextStyles.bodySmallBlack90001,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.v),
                      Opacity(
                        opacity: 0.8,
                        child: Text(
                          accountssectionItemModelObj.currentBalanceText1!,
                          style: CustomTextStyles.bodySmallBlack9000110,
                        ),
                      ),
                      Text(
                        accountssectionItemModelObj.accountNumberText!,
                        style: CustomTextStyles.bodyMediumBlack90001,
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

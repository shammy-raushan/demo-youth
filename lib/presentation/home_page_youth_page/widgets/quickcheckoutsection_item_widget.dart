import '../models/quickcheckoutsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sushant_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class QuickcheckoutsectionItemWidget extends StatelessWidget {
  QuickcheckoutsectionItemWidget(
    this.quickcheckoutsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  QuickcheckoutsectionItemModel quickcheckoutsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 104.v,
          width: 98.h,
          decoration: AppDecoration.outline2,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: quickcheckoutsectionItemModelObj?.onlineGamesImage,
                height: 92.v,
                width: 98.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath:
                            quickcheckoutsectionItemModelObj?.thumbsUpImage,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      SizedBox(height: 14.v),
                      SizedBox(
                        width: 44.h,
                        child: Text(
                          quickcheckoutsectionItemModelObj.onlineGamesText!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallBluegray100.copyWith(
                            height: 1.17,
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
    );
  }
}

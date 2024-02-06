import '../models/userprofilegridsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sushant_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilegridsectionItemWidget extends StatelessWidget {
  UserprofilegridsectionItemWidget(
    this.userprofilegridsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilegridsectionItemModel userprofilegridsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 170.v,
        width: 156.h,
        decoration: AppDecoration.fillGray,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Opacity(
              opacity: 0.3,
              child: CustomImageView(
                imagePath: userprofilegridsectionItemModelObj?.stackImage,
                height: 135.v,
                width: 156.h,
                alignment: Alignment.topCenter,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 16.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath:
                              userprofilegridsectionItemModelObj?.settingsImage,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          margin: EdgeInsets.only(top: 8.v),
                        ),
                        Container(
                          height: 16.v,
                          width: 40.h,
                          margin: EdgeInsets.only(bottom: 32.v),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              CustomImageView(
                                imagePath: userprofilegridsectionItemModelObj
                                    ?.arrowDownImage,
                                height: 16.v,
                                width: 40.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Text(
                                    userprofilegridsectionItemModelObj.newText!,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 39.v),
                    Row(
                      children: [
                        SizedBox(
                          width: 103.h,
                          child: Text(
                            userprofilegridsectionItemModelObj.openAccountText!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            top: 13.v,
                            bottom: 12.v,
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
    );
  }
}

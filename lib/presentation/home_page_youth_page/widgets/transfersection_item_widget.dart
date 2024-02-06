import '../models/transfersection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sushant_s_application1/core/app_export.dart';
import 'package:sushant_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransfersectionItemWidget extends StatelessWidget {
  TransfersectionItemWidget(
    this.transfersectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransfersectionItemModel transfersectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            CustomIconButton(
              height: 70.adaptSize,
              width: 70.adaptSize,
              padding: EdgeInsets.all(19.h),
              child: CustomImageView(
                imagePath: transfersectionItemModelObj?.transferButton,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              transfersectionItemModelObj.payMeText!,
              style: CustomTextStyles.bodySmallBluegray100,
            ),
          ],
        ),
      ),
    );
  }
}

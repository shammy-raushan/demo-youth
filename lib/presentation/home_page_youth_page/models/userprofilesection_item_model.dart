import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.completeKYCImage,
    this.completeKYCText,
    this.highPriorityImage1,
    this.highPriorityImage2,
    this.highPriorityText,
    this.id,
  }) {
    completeKYCImage =
        completeKYCImage ?? ImageConstant.imgTransfer3WhiteA70024x24;
    completeKYCText = completeKYCText ?? "Complete your KYC";
    highPriorityImage1 = highPriorityImage1 ?? ImageConstant.imgGroup;
    highPriorityImage2 = highPriorityImage2 ?? ImageConstant.imgUnionRed60001;
    highPriorityText = highPriorityText ?? "HIGH PRIORITY";
    id = id ?? "";
  }

  String? completeKYCImage;

  String? completeKYCText;

  String? highPriorityImage1;

  String? highPriorityImage2;

  String? highPriorityText;

  String? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [creditcardcomponent_item_widget] screen.
class CreditcardcomponentItemModel {
  CreditcardcomponentItemModel({
    this.cardImage,
    this.userImage,
    this.cardText,
    this.numberText,
    this.expiryText,
    this.id,
  }) {
    cardImage = cardImage ?? ImageConstant.imgUnion176x148;
    userImage = userImage ?? ImageConstant.imgUserYellow800;
    cardText = cardText ?? "Credit Card";
    numberText = numberText ?? "1289";
    expiryText = expiryText ?? "09/25";
    id = id ?? "";
  }

  String? cardImage;

  String? userImage;

  String? cardText;

  String? numberText;

  String? expiryText;

  String? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [transfersection_item_widget] screen.
class TransfersectionItemModel {
  TransfersectionItemModel({
    this.transferButton,
    this.payMeText,
    this.id,
  }) {
    transferButton = transferButton ?? ImageConstant.imgTransfer3WhiteA700;
    payMeText = payMeText ?? "Pay Me";
    id = id ?? "";
  }

  String? transferButton;

  String? payMeText;

  String? id;
}

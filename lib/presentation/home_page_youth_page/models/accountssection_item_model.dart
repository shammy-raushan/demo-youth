import '../../../core/app_export.dart';

/// This class is used in the [accountssection_item_widget] screen.
class AccountssectionItemModel {
  AccountssectionItemModel({
    this.currentBalanceText,
    this.kwdImage,
    this.kwdText,
    this.currentBalanceText1,
    this.accountNumberText,
    this.id,
  }) {
    currentBalanceText = currentBalanceText ?? "Current Balance";
    kwdImage = kwdImage ?? ImageConstant.img;
    kwdText = kwdText ?? "KWD";
    currentBalanceText1 = currentBalanceText1 ?? "Salary Account";
    accountNumberText = accountNumberText ?? "1111 2222 1234";
    id = id ?? "";
  }

  String? currentBalanceText;

  String? kwdImage;

  String? kwdText;

  String? currentBalanceText1;

  String? accountNumberText;

  String? id;
}

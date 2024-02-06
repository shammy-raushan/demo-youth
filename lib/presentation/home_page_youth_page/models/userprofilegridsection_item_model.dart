import '../../../core/app_export.dart';

/// This class is used in the [userprofilegridsection_item_widget] screen.
class UserprofilegridsectionItemModel {
  UserprofilegridsectionItemModel({
    this.stackImage,
    this.settingsImage,
    this.arrowDownImage,
    this.newText,
    this.openAccountText,
    this.id,
  }) {
    stackImage = stackImage ?? ImageConstant.imgUnion135x156;
    settingsImage = settingsImage ?? ImageConstant.imgSettings;
    arrowDownImage = arrowDownImage ?? ImageConstant.imgArrowDown;
    newText = newText ?? "New";
    openAccountText = openAccountText ?? "Open a Family \nAccount";
    id = id ?? "";
  }

  String? stackImage;

  String? settingsImage;

  String? arrowDownImage;

  String? newText;

  String? openAccountText;

  String? id;
}

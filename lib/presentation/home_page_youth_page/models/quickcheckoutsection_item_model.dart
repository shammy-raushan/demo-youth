import '../../../core/app_export.dart';

/// This class is used in the [quickcheckoutsection_item_widget] screen.
class QuickcheckoutsectionItemModel {
  QuickcheckoutsectionItemModel({
    this.onlineGamesImage,
    this.thumbsUpImage,
    this.onlineGamesText,
    this.id,
  }) {
    onlineGamesImage = onlineGamesImage ?? ImageConstant.imgUnion;
    thumbsUpImage = thumbsUpImage ?? ImageConstant.imgThumbsUpWhiteA700;
    onlineGamesText = onlineGamesText ?? "Online\nGames";
    id = id ?? "";
  }

  String? onlineGamesImage;

  String? thumbsUpImage;

  String? onlineGamesText;

  String? id;
}

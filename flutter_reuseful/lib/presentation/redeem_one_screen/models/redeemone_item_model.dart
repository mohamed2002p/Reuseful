import '../../../core/app_export.dart';

/// This class is used in the [redeemone_item_widget] screen.
class RedeemoneItemModel {
  RedeemoneItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgGlami1;
    id = id ?? "";
  }

  String? image;

  String? id;
}

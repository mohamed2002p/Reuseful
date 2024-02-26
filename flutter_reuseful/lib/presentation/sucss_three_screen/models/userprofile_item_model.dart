import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.nameText,
    this.nameValue,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgName;
    nameText = nameText ?? "Name";
    nameValue = nameValue ?? "Amy Young";
    id = id ?? "";
  }

  String? userImage;

  String? nameText;

  String? nameValue;

  String? id;
}

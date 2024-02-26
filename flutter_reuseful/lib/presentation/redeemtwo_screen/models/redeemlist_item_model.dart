import '../../../core/app_export.dart';

/// This class is used in the [redeemlist_item_widget] screen.
class RedeemlistItemModel {
  RedeemlistItemModel({
    this.glamicaDiscountText,
    this.twentySixThousandText,
    this.id,
  }) {
    glamicaDiscountText = glamicaDiscountText ?? "Glamica Discount 15%";
    twentySixThousandText = twentySixThousandText ?? "26,000";
    id = id ?? "";
  }

  String? glamicaDiscountText;

  String? twentySixThousandText;

  String? id;
}

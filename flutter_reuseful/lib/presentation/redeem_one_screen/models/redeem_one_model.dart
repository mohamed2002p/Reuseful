// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'redeemone_item_model.dart';

/// This class defines the variables used in the [redeem_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RedeemOneModel extends Equatable {
  RedeemOneModel({this.redeemoneItemList = const []}) {}

  List<RedeemoneItemModel> redeemoneItemList;

  RedeemOneModel copyWith({List<RedeemoneItemModel>? redeemoneItemList}) {
    return RedeemOneModel(
      redeemoneItemList: redeemoneItemList ?? this.redeemoneItemList,
    );
  }

  @override
  List<Object?> get props => [redeemoneItemList];
}

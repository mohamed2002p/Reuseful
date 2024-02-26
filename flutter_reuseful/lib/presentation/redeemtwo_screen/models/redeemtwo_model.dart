// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'redeemlist_item_model.dart';

/// This class defines the variables used in the [redeemtwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RedeemtwoModel extends Equatable {
  RedeemtwoModel({this.redeemlistItemList = const []}) {}

  List<RedeemlistItemModel> redeemlistItemList;

  RedeemtwoModel copyWith({List<RedeemlistItemModel>? redeemlistItemList}) {
    return RedeemtwoModel(
      redeemlistItemList: redeemlistItemList ?? this.redeemlistItemList,
    );
  }

  @override
  List<Object?> get props => [redeemlistItemList];
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/redeemlist_item_model.dart';
import 'package:sol_chall_reuseful_v4/presentation/redeemtwo_screen/models/redeemtwo_model.dart';
part 'redeemtwo_event.dart';
part 'redeemtwo_state.dart';

/// A bloc that manages the state of a Redeemtwo according to the event that is dispatched to it.
class RedeemtwoBloc extends Bloc<RedeemtwoEvent, RedeemtwoState> {
  RedeemtwoBloc(RedeemtwoState initialState) : super(initialState) {
    on<RedeemtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RedeemtwoInitialEvent event,
    Emitter<RedeemtwoState> emit,
  ) async {
    emit(state.copyWith(
        redeemtwoModelObj: state.redeemtwoModelObj
            ?.copyWith(redeemlistItemList: fillRedeemlistItemList())));
  }

  List<RedeemlistItemModel> fillRedeemlistItemList() {
    return [
      RedeemlistItemModel(
          glamicaDiscountText: "Glamica Discount 15%",
          twentySixThousandText: "26,000"),
      RedeemlistItemModel(
          glamicaDiscountText: "Glamica Discount 30%",
          twentySixThousandText: "50,000"),
      RedeemlistItemModel(
          glamicaDiscountText: "Glamica Discount 75%",
          twentySixThousandText: "210,000")
    ];
  }
}

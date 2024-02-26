import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/redeemone_item_model.dart';
import 'package:sol_chall_reuseful_v4/presentation/redeem_one_screen/models/redeem_one_model.dart';
part 'redeem_one_event.dart';
part 'redeem_one_state.dart';

/// A bloc that manages the state of a RedeemOne according to the event that is dispatched to it.
class RedeemOneBloc extends Bloc<RedeemOneEvent, RedeemOneState> {
  RedeemOneBloc(RedeemOneState initialState) : super(initialState) {
    on<RedeemOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RedeemOneInitialEvent event,
    Emitter<RedeemOneState> emit,
  ) async {
    emit(state.copyWith(
        redeemOneModelObj: state.redeemOneModelObj
            ?.copyWith(redeemoneItemList: fillRedeemoneItemList())));
  }

  List<RedeemoneItemModel> fillRedeemoneItemList() {
    return [RedeemoneItemModel(image: ImageConstant.imgGlami1)];
  }
}

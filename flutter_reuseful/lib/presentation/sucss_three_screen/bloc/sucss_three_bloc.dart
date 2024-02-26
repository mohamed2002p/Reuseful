import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:mohamedahmedeid2002_s_application3/presentation/sucss_three_screen/models/sucss_three_model.dart';
part 'sucss_three_event.dart';
part 'sucss_three_state.dart';

/// A bloc that manages the state of a SucssThree according to the event that is dispatched to it.
class SucssThreeBloc extends Bloc<SucssThreeEvent, SucssThreeState> {
  SucssThreeBloc(SucssThreeState initialState) : super(initialState) {
    on<SucssThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SucssThreeInitialEvent event,
    Emitter<SucssThreeState> emit,
  ) async {
    emit(state.copyWith(
        sucssThreeModelObj: state.sucssThreeModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          userImage: ImageConstant.imgName,
          nameText: "Name",
          nameValue: "Amy Young"),
      UserprofileItemModel(
          userImage: ImageConstant.imgDepartment,
          nameText: "Company",
          nameValue: "Y.A.M"),
      UserprofileItemModel(
          userImage: ImageConstant.imgPhone,
          nameText: "Phone no.",
          nameValue: "+98 1245560090")
    ];
  }
}

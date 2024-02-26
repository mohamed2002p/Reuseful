import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sol_chall_reuseful/presentation/driver_or_user_screen/models/driver_or_user_model.dart';
part 'driver_or_user_event.dart';
part 'driver_or_user_state.dart';

/// A bloc that manages the state of a DriverOrUser according to the event that is dispatched to it.
class DriverOrUserBloc extends Bloc<DriverOrUserEvent, DriverOrUserState> {
  DriverOrUserBloc(DriverOrUserState initialState) : super(initialState) {
    on<DriverOrUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DriverOrUserInitialEvent event,
    Emitter<DriverOrUserState> emit,
  ) async {}
}

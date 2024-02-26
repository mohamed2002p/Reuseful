import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sol_chall_reuseful_v4/presentation/sucss_screen/models/sucss_model.dart';
part 'sucss_event.dart';
part 'sucss_state.dart';

/// A bloc that manages the state of a Sucss according to the event that is dispatched to it.
class SucssBloc extends Bloc<SucssEvent, SucssState> {
  SucssBloc(SucssState initialState) : super(initialState) {
    on<SucssInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SucssInitialEvent event,
    Emitter<SucssState> emit,
  ) async {}
}

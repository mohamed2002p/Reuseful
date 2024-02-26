import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mohamedahmedeid2002_s_application3/presentation/sucss_two_screen/models/sucss_two_model.dart';
part 'sucss_two_event.dart';
part 'sucss_two_state.dart';

/// A bloc that manages the state of a SucssTwo according to the event that is dispatched to it.
class SucssTwoBloc extends Bloc<SucssTwoEvent, SucssTwoState> {
  SucssTwoBloc(SucssTwoState initialState) : super(initialState) {
    on<SucssTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SucssTwoInitialEvent event,
    Emitter<SucssTwoState> emit,
  ) async {}
}

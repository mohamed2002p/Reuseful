import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mohamedahmedeid2002_s_application3/presentation/recycle_one_screen/models/recycle_one_model.dart';
part 'recycle_one_event.dart';
part 'recycle_one_state.dart';

/// A bloc that manages the state of a RecycleOne according to the event that is dispatched to it.
class RecycleOneBloc extends Bloc<RecycleOneEvent, RecycleOneState> {
  RecycleOneBloc(RecycleOneState initialState) : super(initialState) {
    on<RecycleOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RecycleOneInitialEvent event,
    Emitter<RecycleOneState> emit,
  ) async {
    emit(state.copyWith(
        weightController: TextEditingController(),
        timevalueController: TextEditingController(),
        zipcodeController: TextEditingController()));
  }
}

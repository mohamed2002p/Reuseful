import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mohamedahmedeid2002_s_application3/presentation/recycle_screen/models/recycle_model.dart';
part 'recycle_event.dart';
part 'recycle_state.dart';

/// A bloc that manages the state of a Recycle according to the event that is dispatched to it.
class RecycleBloc extends Bloc<RecycleEvent, RecycleState> {
  RecycleBloc(RecycleState initialState) : super(initialState) {
    on<RecycleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RecycleInitialEvent event,
    Emitter<RecycleState> emit,
  ) async {}
}

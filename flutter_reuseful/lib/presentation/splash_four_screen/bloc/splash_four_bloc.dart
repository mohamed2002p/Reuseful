import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sol_chall_reuseful/presentation/splash_four_screen/models/splash_four_model.dart';
part 'splash_four_event.dart';
part 'splash_four_state.dart';

/// A bloc that manages the state of a SplashFour according to the event that is dispatched to it.
class SplashFourBloc extends Bloc<SplashFourEvent, SplashFourState> {
  SplashFourBloc(SplashFourState initialState) : super(initialState) {
    on<SplashFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashFourInitialEvent event,
    Emitter<SplashFourState> emit,
  ) async {}
}

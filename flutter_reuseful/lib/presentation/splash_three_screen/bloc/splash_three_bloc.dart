import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sol_chall_reuseful/presentation/splash_three_screen/models/splash_three_model.dart';
part 'splash_three_event.dart';
part 'splash_three_state.dart';

/// A bloc that manages the state of a SplashThree according to the event that is dispatched to it.
class SplashThreeBloc extends Bloc<SplashThreeEvent, SplashThreeState> {
  SplashThreeBloc(SplashThreeState initialState) : super(initialState) {
    on<SplashThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashThreeInitialEvent event,
    Emitter<SplashThreeState> emit,
  ) async {}
}

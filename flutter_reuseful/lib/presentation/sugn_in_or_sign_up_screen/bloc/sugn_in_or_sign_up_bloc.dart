import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sol_chall_reuseful/presentation/sugn_in_or_sign_up_screen/models/sugn_in_or_sign_up_model.dart';
part 'sugn_in_or_sign_up_event.dart';
part 'sugn_in_or_sign_up_state.dart';

/// A bloc that manages the state of a SugnInOrSignUp according to the event that is dispatched to it.
class SugnInOrSignUpBloc
    extends Bloc<SugnInOrSignUpEvent, SugnInOrSignUpState> {
  SugnInOrSignUpBloc(SugnInOrSignUpState initialState) : super(initialState) {
    on<SugnInOrSignUpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SugnInOrSignUpInitialEvent event,
    Emitter<SugnInOrSignUpState> emit,
  ) async {}
}

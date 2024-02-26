import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sol_chall_reuseful/presentation/about_me_screen/models/about_me_model.dart';
part 'about_me_event.dart';
part 'about_me_state.dart';

/// A bloc that manages the state of a AboutMe according to the event that is dispatched to it.
class AboutMeBloc extends Bloc<AboutMeEvent, AboutMeState> {
  AboutMeBloc(AboutMeState initialState) : super(initialState) {
    on<AboutMeInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<AboutMeState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    AboutMeInitialEvent event,
    Emitter<AboutMeState> emit,
  ) async {
    emit(state.copyWith(
      personalDetailsController: TextEditingController(),
      emailController: TextEditingController(),
      valueController: TextEditingController(),
      passwordController: TextEditingController(),
      eightController: TextEditingController(),
      confirmPasswordController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}

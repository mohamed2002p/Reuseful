// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.emailEditTextController,
    this.editTextController,
    this.signInModelObj,
  });

  TextEditingController? emailEditTextController;

  TextEditingController? editTextController;

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        emailEditTextController,
        editTextController,
        signInModelObj,
      ];

  SignInState copyWith({
    TextEditingController? emailEditTextController,
    TextEditingController? editTextController,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      editTextController: editTextController ?? this.editTextController,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}

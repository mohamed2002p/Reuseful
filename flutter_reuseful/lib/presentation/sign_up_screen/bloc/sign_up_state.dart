// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.mobileNoController,
    this.addressController,
    this.passwordController,
    this.confirmPasswordController,
    this.signUpModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? mobileNoController;

  TextEditingController? addressController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        mobileNoController,
        addressController,
        passwordController,
        confirmPasswordController,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? mobileNoController,
    TextEditingController? addressController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      mobileNoController: mobileNoController ?? this.mobileNoController,
      addressController: addressController ?? this.addressController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}

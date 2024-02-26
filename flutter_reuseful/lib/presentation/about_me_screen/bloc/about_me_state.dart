// ignore_for_file: must_be_immutable

part of 'about_me_bloc.dart';

/// Represents the state of AboutMe in the application.
class AboutMeState extends Equatable {
  AboutMeState({
    this.personalDetailsController,
    this.emailController,
    this.valueController,
    this.passwordController,
    this.eightController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.aboutMeModelObj,
  });

  TextEditingController? personalDetailsController;

  TextEditingController? emailController;

  TextEditingController? valueController;

  TextEditingController? passwordController;

  TextEditingController? eightController;

  TextEditingController? confirmPasswordController;

  AboutMeModel? aboutMeModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        personalDetailsController,
        emailController,
        valueController,
        passwordController,
        eightController,
        confirmPasswordController,
        isShowPassword,
        aboutMeModelObj,
      ];

  AboutMeState copyWith({
    TextEditingController? personalDetailsController,
    TextEditingController? emailController,
    TextEditingController? valueController,
    TextEditingController? passwordController,
    TextEditingController? eightController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    AboutMeModel? aboutMeModelObj,
  }) {
    return AboutMeState(
      personalDetailsController:
          personalDetailsController ?? this.personalDetailsController,
      emailController: emailController ?? this.emailController,
      valueController: valueController ?? this.valueController,
      passwordController: passwordController ?? this.passwordController,
      eightController: eightController ?? this.eightController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      aboutMeModelObj: aboutMeModelObj ?? this.aboutMeModelObj,
    );
  }
}

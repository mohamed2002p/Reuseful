// ignore_for_file: must_be_immutable

part of 'sugn_in_or_sign_up_bloc.dart';

/// Represents the state of SugnInOrSignUp in the application.
class SugnInOrSignUpState extends Equatable {
  SugnInOrSignUpState({this.sugnInOrSignUpModelObj});

  SugnInOrSignUpModel? sugnInOrSignUpModelObj;

  @override
  List<Object?> get props => [
        sugnInOrSignUpModelObj,
      ];

  SugnInOrSignUpState copyWith({SugnInOrSignUpModel? sugnInOrSignUpModelObj}) {
    return SugnInOrSignUpState(
      sugnInOrSignUpModelObj:
          sugnInOrSignUpModelObj ?? this.sugnInOrSignUpModelObj,
    );
  }
}

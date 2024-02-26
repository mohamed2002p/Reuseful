// ignore_for_file: must_be_immutable

part of 'splash_two_bloc.dart';

/// Represents the state of SplashTwo in the application.
class SplashTwoState extends Equatable {
  SplashTwoState({this.splashTwoModelObj});

  SplashTwoModel? splashTwoModelObj;

  @override
  List<Object?> get props => [
        splashTwoModelObj,
      ];

  SplashTwoState copyWith({SplashTwoModel? splashTwoModelObj}) {
    return SplashTwoState(
      splashTwoModelObj: splashTwoModelObj ?? this.splashTwoModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'splash_three_bloc.dart';

/// Represents the state of SplashThree in the application.
class SplashThreeState extends Equatable {
  SplashThreeState({this.splashThreeModelObj});

  SplashThreeModel? splashThreeModelObj;

  @override
  List<Object?> get props => [
        splashThreeModelObj,
      ];

  SplashThreeState copyWith({SplashThreeModel? splashThreeModelObj}) {
    return SplashThreeState(
      splashThreeModelObj: splashThreeModelObj ?? this.splashThreeModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'splash_four_bloc.dart';

/// Represents the state of SplashFour in the application.
class SplashFourState extends Equatable {
  SplashFourState({this.splashFourModelObj});

  SplashFourModel? splashFourModelObj;

  @override
  List<Object?> get props => [
        splashFourModelObj,
      ];

  SplashFourState copyWith({SplashFourModel? splashFourModelObj}) {
    return SplashFourState(
      splashFourModelObj: splashFourModelObj ?? this.splashFourModelObj,
    );
  }
}

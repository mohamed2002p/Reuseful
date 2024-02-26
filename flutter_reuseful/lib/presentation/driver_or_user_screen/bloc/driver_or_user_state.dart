// ignore_for_file: must_be_immutable

part of 'driver_or_user_bloc.dart';

/// Represents the state of DriverOrUser in the application.
class DriverOrUserState extends Equatable {
  DriverOrUserState({this.driverOrUserModelObj});

  DriverOrUserModel? driverOrUserModelObj;

  @override
  List<Object?> get props => [
        driverOrUserModelObj,
      ];

  DriverOrUserState copyWith({DriverOrUserModel? driverOrUserModelObj}) {
    return DriverOrUserState(
      driverOrUserModelObj: driverOrUserModelObj ?? this.driverOrUserModelObj,
    );
  }
}

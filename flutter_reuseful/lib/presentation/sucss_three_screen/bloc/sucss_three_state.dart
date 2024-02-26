// ignore_for_file: must_be_immutable

part of 'sucss_three_bloc.dart';

/// Represents the state of SucssThree in the application.
class SucssThreeState extends Equatable {
  SucssThreeState({this.sucssThreeModelObj});

  SucssThreeModel? sucssThreeModelObj;

  @override
  List<Object?> get props => [
        sucssThreeModelObj,
      ];

  SucssThreeState copyWith({SucssThreeModel? sucssThreeModelObj}) {
    return SucssThreeState(
      sucssThreeModelObj: sucssThreeModelObj ?? this.sucssThreeModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'sucss_bloc.dart';

/// Represents the state of Sucss in the application.
class SucssState extends Equatable {
  SucssState({this.sucssModelObj});

  SucssModel? sucssModelObj;

  @override
  List<Object?> get props => [
        sucssModelObj,
      ];

  SucssState copyWith({SucssModel? sucssModelObj}) {
    return SucssState(
      sucssModelObj: sucssModelObj ?? this.sucssModelObj,
    );
  }
}

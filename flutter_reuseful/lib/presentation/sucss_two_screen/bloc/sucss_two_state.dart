// ignore_for_file: must_be_immutable

part of 'sucss_two_bloc.dart';

/// Represents the state of SucssTwo in the application.
class SucssTwoState extends Equatable {
  SucssTwoState({this.sucssTwoModelObj});

  SucssTwoModel? sucssTwoModelObj;

  @override
  List<Object?> get props => [
        sucssTwoModelObj,
      ];

  SucssTwoState copyWith({SucssTwoModel? sucssTwoModelObj}) {
    return SucssTwoState(
      sucssTwoModelObj: sucssTwoModelObj ?? this.sucssTwoModelObj,
    );
  }
}

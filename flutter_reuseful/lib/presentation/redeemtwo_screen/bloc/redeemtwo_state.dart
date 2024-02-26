// ignore_for_file: must_be_immutable

part of 'redeemtwo_bloc.dart';

/// Represents the state of Redeemtwo in the application.
class RedeemtwoState extends Equatable {
  RedeemtwoState({this.redeemtwoModelObj});

  RedeemtwoModel? redeemtwoModelObj;

  @override
  List<Object?> get props => [
        redeemtwoModelObj,
      ];

  RedeemtwoState copyWith({RedeemtwoModel? redeemtwoModelObj}) {
    return RedeemtwoState(
      redeemtwoModelObj: redeemtwoModelObj ?? this.redeemtwoModelObj,
    );
  }
}

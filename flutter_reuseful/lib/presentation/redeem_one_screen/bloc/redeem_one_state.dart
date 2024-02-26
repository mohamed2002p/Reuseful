// ignore_for_file: must_be_immutable

part of 'redeem_one_bloc.dart';

/// Represents the state of RedeemOne in the application.
class RedeemOneState extends Equatable {
  RedeemOneState({this.redeemOneModelObj});

  RedeemOneModel? redeemOneModelObj;

  @override
  List<Object?> get props => [
        redeemOneModelObj,
      ];

  RedeemOneState copyWith({RedeemOneModel? redeemOneModelObj}) {
    return RedeemOneState(
      redeemOneModelObj: redeemOneModelObj ?? this.redeemOneModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'redeem_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RedeemOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RedeemOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RedeemOne widget is first created.
class RedeemOneInitialEvent extends RedeemOneEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'redeemtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Redeemtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RedeemtwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Redeemtwo widget is first created.
class RedeemtwoInitialEvent extends RedeemtwoEvent {
  @override
  List<Object?> get props => [];
}

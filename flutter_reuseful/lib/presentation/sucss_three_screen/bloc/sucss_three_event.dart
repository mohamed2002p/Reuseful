// ignore_for_file: must_be_immutable

part of 'sucss_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SucssThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SucssThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SucssThree widget is first created.
class SucssThreeInitialEvent extends SucssThreeEvent {
  @override
  List<Object?> get props => [];
}

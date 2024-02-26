// ignore_for_file: must_be_immutable

part of 'sucss_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SucssTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SucssTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SucssTwo widget is first created.
class SucssTwoInitialEvent extends SucssTwoEvent {
  @override
  List<Object?> get props => [];
}

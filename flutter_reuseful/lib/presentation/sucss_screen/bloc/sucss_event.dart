// ignore_for_file: must_be_immutable

part of 'sucss_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sucss widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SucssEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sucss widget is first created.
class SucssInitialEvent extends SucssEvent {
  @override
  List<Object?> get props => [];
}

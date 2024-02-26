// ignore_for_file: must_be_immutable

part of 'recycle_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Recycle widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RecycleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Recycle widget is first created.
class RecycleInitialEvent extends RecycleEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'recycle_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RecycleOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RecycleOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RecycleOne widget is first created.
class RecycleOneInitialEvent extends RecycleOneEvent {
  @override
  List<Object?> get props => [];
}

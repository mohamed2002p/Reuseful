// ignore_for_file: must_be_immutable

part of 'driver_or_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DriverOrUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DriverOrUserEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DriverOrUser widget is first created.
class DriverOrUserInitialEvent extends DriverOrUserEvent {
  @override
  List<Object?> get props => [];
}

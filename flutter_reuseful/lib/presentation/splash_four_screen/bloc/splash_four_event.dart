// ignore_for_file: must_be_immutable

part of 'splash_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SplashFour widget is first created.
class SplashFourInitialEvent extends SplashFourEvent {
  @override
  List<Object?> get props => [];
}

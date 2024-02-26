// ignore_for_file: must_be_immutable

part of 'splash_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SplashThree widget is first created.
class SplashThreeInitialEvent extends SplashThreeEvent {
  @override
  List<Object?> get props => [];
}

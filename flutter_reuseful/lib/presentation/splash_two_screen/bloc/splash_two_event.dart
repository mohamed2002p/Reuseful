// ignore_for_file: must_be_immutable

part of 'splash_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SplashTwo widget is first created.
class SplashTwoInitialEvent extends SplashTwoEvent {
  @override
  List<Object?> get props => [];
}

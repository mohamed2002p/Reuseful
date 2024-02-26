// ignore_for_file: must_be_immutable

part of 'sugn_in_or_sign_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SugnInOrSignUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SugnInOrSignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SugnInOrSignUp widget is first created.
class SugnInOrSignUpInitialEvent extends SugnInOrSignUpEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'about_me_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AboutMe widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AboutMeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AboutMe widget is first created.
class AboutMeInitialEvent extends AboutMeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends AboutMeEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [recycle_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecycleModel extends Equatable {
  RecycleModel() {}

  RecycleModel copyWith() {
    return RecycleModel();
  }

  @override
  List<Object?> get props => [];
}

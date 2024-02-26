// ignore_for_file: must_be_immutable

part of 'recycle_bloc.dart';

/// Represents the state of Recycle in the application.
class RecycleState extends Equatable {
  RecycleState({this.recycleModelObj});

  RecycleModel? recycleModelObj;

  @override
  List<Object?> get props => [
        recycleModelObj,
      ];

  RecycleState copyWith({RecycleModel? recycleModelObj}) {
    return RecycleState(
      recycleModelObj: recycleModelObj ?? this.recycleModelObj,
    );
  }
}

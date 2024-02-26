// ignore_for_file: must_be_immutable

part of 'recycle_one_bloc.dart';

/// Represents the state of RecycleOne in the application.
class RecycleOneState extends Equatable {
  RecycleOneState({
    this.weightController,
    this.timevalueController,
    this.zipcodeController,
    this.recycleOneModelObj,
  });

  TextEditingController? weightController;

  TextEditingController? timevalueController;

  TextEditingController? zipcodeController;

  RecycleOneModel? recycleOneModelObj;

  @override
  List<Object?> get props => [
        weightController,
        timevalueController,
        zipcodeController,
        recycleOneModelObj,
      ];

  RecycleOneState copyWith({
    TextEditingController? weightController,
    TextEditingController? timevalueController,
    TextEditingController? zipcodeController,
    RecycleOneModel? recycleOneModelObj,
  }) {
    return RecycleOneState(
      weightController: weightController ?? this.weightController,
      timevalueController: timevalueController ?? this.timevalueController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      recycleOneModelObj: recycleOneModelObj ?? this.recycleOneModelObj,
    );
  }
}

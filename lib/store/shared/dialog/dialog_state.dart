//import 'dart:collection';
//
//import 'package:digital_home/store/shared/models/reducer.dart';
//import 'package:profit_app/models/dto/dialog_dto.dart';
//
//class DialogModuleState {
//  List<DialogDTO> dialogList = [];
//
//  DialogModuleState({
//    this.dialogList,
//  });
//
//  factory DialogModuleState.initial() {
//    return DialogModuleState(
//      dialogList: [],
//    );
//  }
//
//  DialogModuleState copyWith({
//    List<DialogDTO> dialogList,
//  }) {
//    return DialogModuleState(
//      dialogList: dialogList ?? this.dialogList,
//    );
//  }
//
//  DialogModuleState reducer(DialogModuleState state, dynamic action) {
//    return Reducer<DialogModuleState>(
//      actions: HashMap,
//    ).updateState(action, state);
//  }
//}

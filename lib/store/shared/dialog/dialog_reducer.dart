//import 'package:profit_app/models/dto/dialog_dto.dart';
//import 'package:profit_app/store/dialog/dialog_actions.dart';
//import 'package:profit_app/store/dialog/dialog_state.dart';
//
//DialogModuleState dialogModuleReducer(DialogModuleState state, dynamic action) {
//  switch (action.runtimeType) {
//    case DisplayDialog:
//      DisplayDialog displayDialog = action as DisplayDialog;
//
//      List<DialogDTO> dialogs = List<DialogDTO>.from(state.dialogList);
//      dialogs.removeWhere((dialog) => dialog.dialogType == displayDialog.dialogType);
//
//      return state.copyWith(dialogList: List.from(state.dialogList)..add(displayDialog.dialogDTO));
//
//    case HideDialog:
//      return state.copyWith(dialogList: List.from(state.dialogList)..clear());
//
//    default:
//      return state;
//  }
//}

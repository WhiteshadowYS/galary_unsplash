//import 'dart:collection';
//
//import 'package:redux/redux.dart';
//
//import '../app/app_state.dart';
//
//class DialogSelector {
//  static void Function() getSignOutFunction(Store<AppState> store) {
//    return () => store.dispatch(SignOut());
//  }
//
//  static HideDialogFunction getHideDialogFunction(Store<AppState> store) {
//    return () => store.dispatch(HideDialog());
//  }
//
//  static List<DialogDTO> getDialogList(Store<AppState> store) {
//    return store.state.dialogModuleState.dialogList;
//  }
//
//  static ShowValidationDialogFunction getShowValidationDialogFunction(Store<AppState> store) {
//    return (String content) {
//      store.dispatch(
//        DisplayDialog(
//          dialogDTO: DialogDTO(content: content ?? UNKNOWN_ERROR, dialogType: DialogType.ErrorDialog),
//        ),
//      );
//    };
//  }
//
//  static Function showDialog(Store<AppState> store) {
//    return (DialogType dialogType) => store.dispatch(DisplayDialog(dialogDTO: DialogDTO(content: UNKNOWN_ERROR, dialogType: dialogType)));
//  }
//
//  static BannerDTO getBanner(Store<AppState> store) {
//    return store.state.bannerState.bannerList.first;
//  }
//
//  static HashMap<LoadingKeys, bool> getLoaderList(Store<AppState> store) {
//    return store.state.loaderState.loadingKeys;
//  }
//}

import 'package:gallery_unsplash/res/colors.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/ui/layouts/main_layout/main_layout.dart';
import 'package:gallery_unsplash/ui/pages/home_page/home_page_view_model.dart';
import 'package:gallery_unsplash/ui/pages/shared/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageViewModel>(
      converter: HomePageViewModel.fromStore,
      builder: (BuildContext context, HomePageViewModel vm) {
        return MainLayout(
          bgColor: PRIMARY_WHITE,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                centerTitle: true,
                backgroundColor: BG_COLOR,
                expandedHeight: 240.h,
                leading: MenuButton(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.h),
                ),
                flexibleSpace: SafeArea(
                  top: true,
                  child: Container(),
                ),
              ),
              SliverAnimatedList(
                initialItemCount: vm.selectedRoom?.elements?.length ?? 0,
                itemBuilder: (BuildContext context, int index, Animation<double> animation) {
                  return Container(
                    height: 100,
                    margin: const EdgeInsets.only(
                      top: 12.0,
                      right: 24.0,
                      left: 24.0,
                    ),
                    decoration: BoxDecoration(
                      color: PRIMARY_COLOR,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          vm.selectedRoom.elements[index].icon,
                          color: PRIMARY_WHITE,
                          size: 36.0,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

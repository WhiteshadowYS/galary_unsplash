import 'package:gallery_unsplash/dictionary/flutter_dictionary.dart';
import 'package:gallery_unsplash/models/dto/auth_request_dto.dart';
import 'package:gallery_unsplash/res/colors.dart';
import 'package:gallery_unsplash/res/font_styles.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/ui/layouts/main_layout/main_layout.dart';
import 'package:gallery_unsplash/ui/pages/auth_page/auth_page_view_model.dart';
import 'package:gallery_unsplash/ui/shared/logo_text.dart';
import 'package:gallery_unsplash/ui/shared/main_button.dart';
import 'package:gallery_unsplash/ui/shared/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AuthPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthPageViewModel>(
      converter: AuthPageViewModel.fromStore,
      builder: (BuildContext context, AuthPageViewModel vm) {
        return MainLayout(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Spacer(),
                LogoText(
                  color: PRIMARY_WHITE,
                  size: 42.h,
                ),
                const SizedBox(height: 64.0),
                Text(
                  vm.user?.name ?? 'Unknown',
                  style: Fonts.version(),
                ),
                MainTextField(
                  inputType: TextInputType.emailAddress,
                  hintText: FlutterDictionary.instance.language.auth.emailHint,
                  onChange: (String str) {},
                  validation: (String arg) {
                    return arg == '123' ? 'Hello' : null;
                  },
                  textController: emailController,
                ),
                const SizedBox(height: 24.0),
                MainTextField(
                  inputType: TextInputType.visiblePassword,
                  hintText: FlutterDictionary.instance.language.auth.passHint,
                  onChange: (String str) {},
                  textController: passController,
                ),
                const SizedBox(height: 64.0),
                MainButton(
                  onPressed: () => vm.login(AuthRequestDTO(
                    email: emailController.text,
                    password: passController.text,
                  )),
                  height: 50,
                  width: 170.w,
                  shadows: PRIMARY_WHITE_SHADOW,
                  color: PRIMARY_WHITE,
                  splashColor: SELECTED_ITEM_COLOR,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      FlutterDictionary.instance.language.auth.loginButtonText,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        );
      }
    );
  }
}



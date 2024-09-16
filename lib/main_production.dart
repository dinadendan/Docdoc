import 'package:docdoc_app/core/helper/constants.dart';
import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/helper/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      // statusBarIconBrightness: Brightness.dark,
      // statusBarBrightness: Brightness.dark,
      // systemNavigationBarDividerColor: Colors.grey,
      // systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(DocApp(
    appRouter: AppRouter(),
  ));

}
checkIfLoggedInUser() async {
  String? userToken =
  await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}


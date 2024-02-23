import 'package:core_flutter/common_widgets/app_toast.dart';
import 'package:core_flutter/core/base_ui/base_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension PageExtensions on BaseStatefulPage {
  showShortToast(String message) {
    AppToast.showToast(message, duration: Toast.LENGTH_SHORT);
  }

  showLongToast(String message) {
    AppToast.showToast(message, duration: Toast.LENGTH_LONG);
  }
}

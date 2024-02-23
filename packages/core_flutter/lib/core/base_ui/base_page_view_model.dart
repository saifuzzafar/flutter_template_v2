import 'package:core/errors/app_error.dart';
import 'package:core_flutter/core/base_ui/base_view_model.dart';
import 'package:core_flutter/utils/extension/stream_extention.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class BasePageViewModel extends BaseViewModel {
  final PublishSubject<AppError?> _error = PublishSubject<AppError?>();
  final PublishSubject<String> _toast = PublishSubject<String>();

  final BehaviorSubject<Widget?> _topRightAchorWidget = BehaviorSubject();
  Stream<Widget?> get anchorWidget => _topRightAchorWidget.stream;

  Stream<AppError?> get error => _error.stream;

  Stream<String> get toast => _toast.stream;

  void showToastWithError(AppError? error) {
    _error.sink.add(error);
  }

  void showToastWithString(String message) {
    _toast.sink.add(message);
  }

  void notify() {
    notifyListeners();
  }

  void openDrawer(context) {
    try {
      context.openDrawer();
    } catch (e) {
      debugPrint('BasePageViewModel: openDrawer() => $e');
    }
  }

  void topRightAnchorWidget({Widget? widget}) {
    _topRightAchorWidget.safeAdd(widget);
  }

  @override
  void dispose() {
    _error.close();
    _toast.close();
    _topRightAchorWidget.close;
    super.dispose();
  }
}

import 'package:flutter/material.dart';

class NetworkConstant {
  NetworkConstant._();

  GlobalKey<NavigatorState> movieAppLevelKey = GlobalKey(debugLabel: 'app-key');
  static const String baseApiUrl = "www.xyz.com";
}

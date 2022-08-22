// Flutter imports:
import 'package:ecommerce_demo/app/config/path.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();

  static final Handler _homeHandler = Handler(handlerFunc: (context, args) {
    return Container();
  });

  static void setupRouter() {
    router.define(Routes.home,
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
  }
}

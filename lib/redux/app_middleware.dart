// Package imports:
import 'package:ecommerce_demo/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';

// Project imports:

List<Middleware<AppState>> createAppMiddleWare() {
  List<Middleware<AppState>> appMiddleware = [];
  appMiddleware.add(LoggingMiddleware.printer());
  return appMiddleware;
}

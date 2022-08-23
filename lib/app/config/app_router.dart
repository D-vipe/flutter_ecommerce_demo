// Flutter imports:
import 'package:fluro/fluro.dart';
import 'package:ecommerce_demo/app/config/path.dart';
import 'package:ecommerce_demo/screens/initial/ui/home_screen.dart';

class AppRouter {
  static FluroRouter router = FluroRouter();

  static final Handler _homeHandler = Handler(handlerFunc: (context, args) {
    return const HomeScreen();
  });

  static void setupRouter() {
    router.define(Routes.home,
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
  }
}

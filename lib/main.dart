import 'package:ecommerce_demo/app/config/app_router.dart';
import 'package:ecommerce_demo/app/config/path.dart';
import 'package:ecommerce_demo/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SharedStorageService.init();
  // await HiveService.init();

  // Imitate user logged in
  // final String userId = SharedStorageService.getString(PreferenceKey.userId);
  // if (userId.isEmpty) {
  //   await CachingService.setLoggedUser();
  // }

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  AppRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // final store = Store<AppState>(
  //   appReducer,
  //   initialState: AppState.initialState(),
  //   middleware: createAppMiddleWare(),
  // );

  @override
  Widget build(BuildContext context) {
    // return StoreProvider<AppState>(
    //   store: store,
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Social App',
    //     locale: const Locale('ru'),
    //     localizationsDelegates: const [
    //       GlobalMaterialLocalizations.delegate,
    //     ],
    //     theme: _light ? AppTheme.lightTheme() : AppTheme.darkTheme(),
    //     onGenerateRoute: AppRouter.onGenerateRoute,
    //     initialRoute: 'home',
    //   ),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce concept',
      locale: const Locale('en'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
      ],
      theme: AppTheme.lightTheme(),
      initialRoute: Routes.home,
      onGenerateRoute: AppRouter.router.generator,
    );
  }
}

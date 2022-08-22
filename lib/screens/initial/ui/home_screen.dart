import 'package:ecommerce_demo/screens/initial/ui/tabs_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeScreen extends StatefulWidget {
  final int? requestedIndex;
  const HomeScreen({
    Key? key,
    this.requestedIndex,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int requestedIndex = 0;

  @override
  void initState() {
    super.initState();
    requestedIndex = widget.requestedIndex ?? 0;
  }

  Future<bool> _onWillPop() async {
    if (!Navigator.canPop(context)) {
      setState(() => requestedIndex = 0);
    }
    return Navigator.canPop(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: TabsScaffold(
          requestedIndex: requestedIndex,
        ),
        onWillPop: _onWillPop);
    // return WillPopScope(
    //   onWillPop: _onWillPop,
    //   child: StoreConnector<AppState, ProfileViewModel>(
    //     distinct: true,
    //     converter: (store) => store.state.profileScreenState,
    //     onInit: (store) => store.dispatch(GetProfileAction()),
    //     builder: (_, state) {
    //       return state.isLoading
    //           ? const HomeLoadingScreen()
    //           : state.profile != null
    //           ? TabsScaffold(
    //         profile: state.profile!,
    //         requestedIndex: requestedIndex,
    //       )
    //           : HomeErrorScreen(
    //           message: state.errorMessage ?? GeneralErrors.emptyUser);
    //     },
    //   ),
    // );
  }
}

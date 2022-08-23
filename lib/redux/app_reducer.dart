// Project imports:
import 'package:ecommerce_demo/redux/app_state.dart';
import 'package:ecommerce_demo/redux/reducers/products_list_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    productsListState: productsListReducer(state.productsListState, action),
  );
}

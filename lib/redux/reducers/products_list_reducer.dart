// Package imports:
import 'package:ecommerce_demo/api/models/best_seller_model.dart';
import 'package:ecommerce_demo/api/models/home_store_model.dart';
import 'package:ecommerce_demo/redux/actions/products_actions.dart';
import 'package:ecommerce_demo/screens/products/view_model/products_view_model.dart';
import 'package:redux/redux.dart';

// Project imports:

final productsListReducer = combineReducers<ProductsViewModel>([
  TypedReducer<ProductsViewModel, GetProductsListSuccess>(_fetch),
  TypedReducer<ProductsViewModel, RefreshProductsList>(_refresh),
  TypedReducer<ProductsViewModel, ProductsListShowError>(_errorHandler),
]);

ProductsViewModel _fetch(
    ProductsViewModel state, GetProductsListSuccess action) {
  List<BestSellerItem> updatedListBest =
      List<BestSellerItem>.from(action.bestSellers);
  List<HomeStoreItem> updatedListHome =
      List<HomeStoreItem>.from(action.homeStore);

  return state.copyWith(
      isLoading: false,
      isRefreshing: false,
      bestSellerList: updatedListBest,
      homeStoreList: updatedListHome);
}

ProductsViewModel _refresh(
    ProductsViewModel state, RefreshProductsList action) {
  return state.copyWith(
    isLoading: false,
    isRefreshing: true,
  );
}

ProductsViewModel _errorHandler(
    ProductsViewModel state, ProductsListShowError action) {
  return state.copyWith(
      isLoading: false,
      isRefreshing: false,
      isError: true,
      errorMessage: action.errorMessage);
}

// Flutter imports:
import 'package:ecommerce_demo/screens/products/view_model/products_view_model.dart';
import 'package:flutter/material.dart';

@immutable
class AppState {
  final ProductsViewModel productsListState;

  const AppState({required this.productsListState});

  factory AppState.initialState() =>
      AppState(productsListState: ProductsViewModel.initial());

  AppState copyWith({
    ProductsViewModel? productsListState,
  }) =>
      AppState(
        productsListState: productsListState ?? this.productsListState,
      );
}

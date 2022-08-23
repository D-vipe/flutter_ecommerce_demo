import 'package:ecommerce_demo/api/models/best_seller_model.dart';
import 'package:ecommerce_demo/api/models/home_store_model.dart';
import 'package:flutter/foundation.dart';

@immutable
class ProductsViewModel {
  final bool isLoading;
  final bool? isRefreshing;
  final bool? isError;
  final String? errorMessage;
  final List<BestSellerItem>? bestSellerList;
  final List<HomeStoreItem>? homeStoreList;

  const ProductsViewModel({
    required this.isLoading,
    this.isRefreshing,
    this.isError,
    this.errorMessage,
    this.bestSellerList,
    this.homeStoreList,
  });

  factory ProductsViewModel.initial() {
    return const ProductsViewModel(isLoading: true);
  }

  ProductsViewModel copyWith({
    required bool isLoading,
    bool? isRefreshing,
    bool? isError,
    String? errorMessage,
    List<BestSellerItem>? bestSellerList,
    List<HomeStoreItem>? homeStoreList,
  }) {
    return ProductsViewModel(
      isLoading: isLoading,
      isRefreshing: isRefreshing ?? this.isRefreshing,
      isError: isError ?? this.isError,
      errorMessage: errorMessage ?? this.errorMessage,
      bestSellerList: bestSellerList ?? this.bestSellerList,
      homeStoreList: homeStoreList ?? this.homeStoreList,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductsViewModel &&
          runtimeType == other.runtimeType &&
          isLoading == other.isLoading &&
          isRefreshing == other.isRefreshing &&
          isError == other.isError &&
          errorMessage == other.errorMessage &&
          bestSellerList == other.bestSellerList &&
          homeStoreList == other.homeStoreList;

  /// if we really want to check that postList has changed
  /// use the string below
  /// listsEqual(postList, other.postList);

  @override
  int get hashCode =>
      isLoading.hashCode ^
      isRefreshing.hashCode ^
      isError.hashCode ^
      errorMessage.hashCode ^
      bestSellerList.hashCode ^
      homeStoreList.hashCode;
}

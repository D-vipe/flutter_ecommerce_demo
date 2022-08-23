// Project imports:
import 'package:ecommerce_demo/api/models/best_seller_model.dart';
import 'package:ecommerce_demo/api/models/home_store_model.dart';

class GetProductsList {}

class GetProductsListSuccess {
  final List<BestSellerItem> bestSellers;
  final List<HomeStoreItem> homeStore;

  GetProductsListSuccess({required this.bestSellers, required this.homeStore});
}

class ProductsListShowError {
  final String errorMessage;

  ProductsListShowError({required this.errorMessage});
}

class RefreshProductsList {
  final List<BestSellerItem> bestSellersOld;
  final List<HomeStoreItem> homeStoreOld;

  RefreshProductsList(
      {required this.bestSellersOld, required this.homeStoreOld});
}

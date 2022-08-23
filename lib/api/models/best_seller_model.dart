import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'best_seller_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class BestSellerItem {
  @HiveField(0)
  final int id;

  @HiveField(1)
  @JsonKey(name: 'is_favorites')
  final bool? isFavorites;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String picture;

  @JsonKey(name: 'price_without_discount')
  @HiveField(4)
  final int priceWithoutDiscount;

  @JsonKey(name: 'discount_price')
  @HiveField(5)
  final int discountPrice;

  BestSellerItem({
    required this.id,
    this.isFavorites,
    required this.title,
    required this.priceWithoutDiscount,
    required this.picture,
    required this.discountPrice,
  });

  factory BestSellerItem.fromJson(Map<String, dynamic> json) =>
      _$BestSellerItemFromJson(json);

  Map<String, dynamic> toJson() => _$BestSellerItemToJson(this);
}

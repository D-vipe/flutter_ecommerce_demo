import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_store_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class HomeStoreItem {
  @HiveField(0)
  final int id;

  @HiveField(1)
  @JsonKey(name: 'is_new')
  final bool? isNew;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String subTitle;

  @HiveField(4)
  final String picture;

  @JsonKey(name: 'is_buy')
  @HiveField(5)
  final bool isBuy;

  HomeStoreItem({
    required this.id,
    this.isNew,
    required this.title,
    required this.subTitle,
    required this.picture,
    required this.isBuy,
  });

  factory HomeStoreItem.fromJson(Map<String, dynamic> json) =>
      _$HomeStoreItemFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStoreItemToJson(this);
}

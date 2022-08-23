// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BestSellerItemAdapter extends TypeAdapter<BestSellerItem> {
  @override
  final int typeId = 2;

  @override
  BestSellerItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BestSellerItem(
      id: fields[0] as int,
      isFavorites: fields[1] as bool?,
      title: fields[2] as String,
      priceWithoutDiscount: fields[4] as int,
      picture: fields[3] as String,
      discountPrice: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BestSellerItem obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isFavorites)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.picture)
      ..writeByte(4)
      ..write(obj.priceWithoutDiscount)
      ..writeByte(5)
      ..write(obj.discountPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BestSellerItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSellerItem _$BestSellerItemFromJson(Map<String, dynamic> json) =>
    BestSellerItem(
      id: json['id'] as int,
      isFavorites: json['is_favorites'] as bool?,
      title: json['title'] as String,
      priceWithoutDiscount: json['price_without_discount'] as int,
      picture: json['picture'] as String,
      discountPrice: json['discount_price'] as int,
    );

Map<String, dynamic> _$BestSellerItemToJson(BestSellerItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'title': instance.title,
      'picture': instance.picture,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
    };

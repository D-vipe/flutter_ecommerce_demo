// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeStoreItemAdapter extends TypeAdapter<HomeStoreItem> {
  @override
  final int typeId = 1;

  @override
  HomeStoreItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeStoreItem(
      id: fields[0] as int,
      isNew: fields[1] as bool?,
      title: fields[2] as String,
      subTitle: fields[3] as String,
      picture: fields[4] as String,
      isBuy: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, HomeStoreItem obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isNew)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.subTitle)
      ..writeByte(4)
      ..write(obj.picture)
      ..writeByte(5)
      ..write(obj.isBuy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeStoreItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeStoreItem _$HomeStoreItemFromJson(Map<String, dynamic> json) =>
    HomeStoreItem(
      id: json['id'] as int,
      isNew: json['is_new'] as bool?,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      picture: json['picture'] as String,
      isBuy: json['is_buy'] as bool,
    );

Map<String, dynamic> _$HomeStoreItemToJson(HomeStoreItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'picture': instance.picture,
      'is_buy': instance.isBuy,
    };

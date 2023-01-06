// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_market_coin_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveMarketCoinDTOAdapter extends TypeAdapter<HiveMarketCoinDTO> {
  @override
  final int typeId = 1;

  @override
  HiveMarketCoinDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveMarketCoinDTO(
      symbol: fields[0] as String,
      name: fields[1] as String,
      image: fields[2] as String,
      currentPrice: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, HiveMarketCoinDTO obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.symbol)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.currentPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveMarketCoinDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

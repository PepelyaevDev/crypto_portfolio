// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_payment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePaymentAdapter extends TypeAdapter<HivePayment> {
  @override
  final int typeId = 0;

  @override
  HivePayment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePayment(
      symbol: fields[0] as String,
      dateTime: fields[1] as DateTime,
      type: fields[2] as HivePaymentType,
      amount: fields[3] as double,
      numberOfCoins: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, HivePayment obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.symbol)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.amount)
      ..writeByte(4)
      ..write(obj.numberOfCoins);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePaymentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HivePaymentTypeAdapter extends TypeAdapter<HivePaymentType> {
  @override
  final int typeId = 1;

  @override
  HivePaymentType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return HivePaymentType.Withdraw;
      case 1:
        return HivePaymentType.Deposit;
      default:
        return HivePaymentType.Withdraw;
    }
  }

  @override
  void write(BinaryWriter writer, HivePaymentType obj) {
    switch (obj) {
      case HivePaymentType.Withdraw:
        writer.writeByte(0);
        break;
      case HivePaymentType.Deposit:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePaymentTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

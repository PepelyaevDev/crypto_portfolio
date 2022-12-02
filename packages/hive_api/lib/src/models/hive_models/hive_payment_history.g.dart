// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_payment_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePaymentHistoryAdapter extends TypeAdapter<HivePaymentHistory> {
  @override
  final int typeId = 0;

  @override
  HivePaymentHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePaymentHistory(
      data: (fields[0] as List).cast<HivePayment>(),
    );
  }

  @override
  void write(BinaryWriter writer, HivePaymentHistory obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePaymentHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HivePaymentAdapter extends TypeAdapter<HivePayment> {
  @override
  final int typeId = 1;

  @override
  HivePayment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePayment(
      type: fields[0] as HivePaymentType,
      amount: fields[1] as double,
      numberOfCoins: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, HivePayment obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
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
  final int typeId = 2;

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

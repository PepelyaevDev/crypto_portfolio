// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coins_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinsEntity _$CoinsEntityFromJson(Map<String, dynamic> json) {
  return _CoinsEntity.fromJson(json);
}

/// @nodoc
mixin _$CoinsEntity {
  List<CoinEntity> get coins => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinsEntityCopyWith<CoinsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsEntityCopyWith<$Res> {
  factory $CoinsEntityCopyWith(
          CoinsEntity value, $Res Function(CoinsEntity) then) =
      _$CoinsEntityCopyWithImpl<$Res, CoinsEntity>;
  @useResult
  $Res call({List<CoinEntity> coins, DateTime updateTime});
}

/// @nodoc
class _$CoinsEntityCopyWithImpl<$Res, $Val extends CoinsEntity>
    implements $CoinsEntityCopyWith<$Res> {
  _$CoinsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? updateTime = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinEntity>,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinsEntityCopyWith<$Res>
    implements $CoinsEntityCopyWith<$Res> {
  factory _$$_CoinsEntityCopyWith(
          _$_CoinsEntity value, $Res Function(_$_CoinsEntity) then) =
      __$$_CoinsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoinEntity> coins, DateTime updateTime});
}

/// @nodoc
class __$$_CoinsEntityCopyWithImpl<$Res>
    extends _$CoinsEntityCopyWithImpl<$Res, _$_CoinsEntity>
    implements _$$_CoinsEntityCopyWith<$Res> {
  __$$_CoinsEntityCopyWithImpl(
      _$_CoinsEntity _value, $Res Function(_$_CoinsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? updateTime = null,
  }) {
    return _then(_$_CoinsEntity(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinEntity>,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinsEntity implements _CoinsEntity {
  const _$_CoinsEntity(
      {required final List<CoinEntity> coins, required this.updateTime})
      : _coins = coins;

  factory _$_CoinsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CoinsEntityFromJson(json);

  final List<CoinEntity> _coins;
  @override
  List<CoinEntity> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  final DateTime updateTime;

  @override
  String toString() {
    return 'CoinsEntity(coins: $coins, updateTime: $updateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinsEntity &&
            const DeepCollectionEquality().equals(other._coins, _coins) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coins), updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinsEntityCopyWith<_$_CoinsEntity> get copyWith =>
      __$$_CoinsEntityCopyWithImpl<_$_CoinsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinsEntityToJson(
      this,
    );
  }
}

abstract class _CoinsEntity implements CoinsEntity {
  const factory _CoinsEntity(
      {required final List<CoinEntity> coins,
      required final DateTime updateTime}) = _$_CoinsEntity;

  factory _CoinsEntity.fromJson(Map<String, dynamic> json) =
      _$_CoinsEntity.fromJson;

  @override
  List<CoinEntity> get coins;
  @override
  DateTime get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$_CoinsEntityCopyWith<_$_CoinsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinEntity _$CoinEntityFromJson(Map<String, dynamic> json) {
  return _CoinEntity.fromJson(json);
}

/// @nodoc
mixin _$CoinEntity {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get marketCap => throw _privateConstructorUsedError;
  double get buyPrice => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get moneyInvested => throw _privateConstructorUsedError;
  double get allCoinsCurrentPrice => throw _privateConstructorUsedError;
  List<PaymentEntity> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinEntityCopyWith<CoinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinEntityCopyWith<$Res> {
  factory $CoinEntityCopyWith(
          CoinEntity value, $Res Function(CoinEntity) then) =
      _$CoinEntityCopyWithImpl<$Res, CoinEntity>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String image,
      double currentPrice,
      double marketCap,
      double buyPrice,
      double totalAmount,
      double moneyInvested,
      double allCoinsCurrentPrice,
      List<PaymentEntity> history});
}

/// @nodoc
class _$CoinEntityCopyWithImpl<$Res, $Val extends CoinEntity>
    implements $CoinEntityCopyWith<$Res> {
  _$CoinEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? buyPrice = null,
    Object? totalAmount = null,
    Object? moneyInvested = null,
    Object? allCoinsCurrentPrice = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      moneyInvested: null == moneyInvested
          ? _value.moneyInvested
          : moneyInvested // ignore: cast_nullable_to_non_nullable
              as double,
      allCoinsCurrentPrice: null == allCoinsCurrentPrice
          ? _value.allCoinsCurrentPrice
          : allCoinsCurrentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<PaymentEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinEntityCopyWith<$Res>
    implements $CoinEntityCopyWith<$Res> {
  factory _$$_CoinEntityCopyWith(
          _$_CoinEntity value, $Res Function(_$_CoinEntity) then) =
      __$$_CoinEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String image,
      double currentPrice,
      double marketCap,
      double buyPrice,
      double totalAmount,
      double moneyInvested,
      double allCoinsCurrentPrice,
      List<PaymentEntity> history});
}

/// @nodoc
class __$$_CoinEntityCopyWithImpl<$Res>
    extends _$CoinEntityCopyWithImpl<$Res, _$_CoinEntity>
    implements _$$_CoinEntityCopyWith<$Res> {
  __$$_CoinEntityCopyWithImpl(
      _$_CoinEntity _value, $Res Function(_$_CoinEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? buyPrice = null,
    Object? totalAmount = null,
    Object? moneyInvested = null,
    Object? allCoinsCurrentPrice = null,
    Object? history = null,
  }) {
    return _then(_$_CoinEntity(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      moneyInvested: null == moneyInvested
          ? _value.moneyInvested
          : moneyInvested // ignore: cast_nullable_to_non_nullable
              as double,
      allCoinsCurrentPrice: null == allCoinsCurrentPrice
          ? _value.allCoinsCurrentPrice
          : allCoinsCurrentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<PaymentEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinEntity implements _CoinEntity {
  const _$_CoinEntity(
      {required this.symbol,
      required this.name,
      required this.image,
      required this.currentPrice,
      required this.marketCap,
      required this.buyPrice,
      required this.totalAmount,
      required this.moneyInvested,
      required this.allCoinsCurrentPrice,
      required final List<PaymentEntity> history})
      : _history = history;

  factory _$_CoinEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CoinEntityFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  final double currentPrice;
  @override
  final double marketCap;
  @override
  final double buyPrice;
  @override
  final double totalAmount;
  @override
  final double moneyInvested;
  @override
  final double allCoinsCurrentPrice;
  final List<PaymentEntity> _history;
  @override
  List<PaymentEntity> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'CoinEntity(symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, marketCap: $marketCap, buyPrice: $buyPrice, totalAmount: $totalAmount, moneyInvested: $moneyInvested, allCoinsCurrentPrice: $allCoinsCurrentPrice, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinEntity &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.moneyInvested, moneyInvested) ||
                other.moneyInvested == moneyInvested) &&
            (identical(other.allCoinsCurrentPrice, allCoinsCurrentPrice) ||
                other.allCoinsCurrentPrice == allCoinsCurrentPrice) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      name,
      image,
      currentPrice,
      marketCap,
      buyPrice,
      totalAmount,
      moneyInvested,
      allCoinsCurrentPrice,
      const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinEntityCopyWith<_$_CoinEntity> get copyWith =>
      __$$_CoinEntityCopyWithImpl<_$_CoinEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinEntityToJson(
      this,
    );
  }
}

abstract class _CoinEntity implements CoinEntity {
  const factory _CoinEntity(
      {required final String symbol,
      required final String name,
      required final String image,
      required final double currentPrice,
      required final double marketCap,
      required final double buyPrice,
      required final double totalAmount,
      required final double moneyInvested,
      required final double allCoinsCurrentPrice,
      required final List<PaymentEntity> history}) = _$_CoinEntity;

  factory _CoinEntity.fromJson(Map<String, dynamic> json) =
      _$_CoinEntity.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get image;
  @override
  double get currentPrice;
  @override
  double get marketCap;
  @override
  double get buyPrice;
  @override
  double get totalAmount;
  @override
  double get moneyInvested;
  @override
  double get allCoinsCurrentPrice;
  @override
  List<PaymentEntity> get history;
  @override
  @JsonKey(ignore: true)
  _$$_CoinEntityCopyWith<_$_CoinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentEntity _$PaymentEntityFromJson(Map<String, dynamic> json) {
  return _PaymentEntity.fromJson(json);
}

/// @nodoc
mixin _$PaymentEntity {
  String get symbol => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get numberOfCoins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentEntityCopyWith<PaymentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEntityCopyWith<$Res> {
  factory $PaymentEntityCopyWith(
          PaymentEntity value, $Res Function(PaymentEntity) then) =
      _$PaymentEntityCopyWithImpl<$Res, PaymentEntity>;
  @useResult
  $Res call(
      {String symbol,
      DateTime dateTime,
      String type,
      double amount,
      double numberOfCoins});
}

/// @nodoc
class _$PaymentEntityCopyWithImpl<$Res, $Val extends PaymentEntity>
    implements $PaymentEntityCopyWith<$Res> {
  _$PaymentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? dateTime = null,
    Object? type = null,
    Object? amount = null,
    Object? numberOfCoins = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfCoins: null == numberOfCoins
          ? _value.numberOfCoins
          : numberOfCoins // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentEntityCopyWith<$Res>
    implements $PaymentEntityCopyWith<$Res> {
  factory _$$_PaymentEntityCopyWith(
          _$_PaymentEntity value, $Res Function(_$_PaymentEntity) then) =
      __$$_PaymentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      DateTime dateTime,
      String type,
      double amount,
      double numberOfCoins});
}

/// @nodoc
class __$$_PaymentEntityCopyWithImpl<$Res>
    extends _$PaymentEntityCopyWithImpl<$Res, _$_PaymentEntity>
    implements _$$_PaymentEntityCopyWith<$Res> {
  __$$_PaymentEntityCopyWithImpl(
      _$_PaymentEntity _value, $Res Function(_$_PaymentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? dateTime = null,
    Object? type = null,
    Object? amount = null,
    Object? numberOfCoins = null,
  }) {
    return _then(_$_PaymentEntity(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfCoins: null == numberOfCoins
          ? _value.numberOfCoins
          : numberOfCoins // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentEntity implements _PaymentEntity {
  const _$_PaymentEntity(
      {required this.symbol,
      required this.dateTime,
      required this.type,
      required this.amount,
      required this.numberOfCoins});

  factory _$_PaymentEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentEntityFromJson(json);

  @override
  final String symbol;
  @override
  final DateTime dateTime;
  @override
  final String type;
  @override
  final double amount;
  @override
  final double numberOfCoins;

  @override
  String toString() {
    return 'PaymentEntity(symbol: $symbol, dateTime: $dateTime, type: $type, amount: $amount, numberOfCoins: $numberOfCoins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentEntity &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.numberOfCoins, numberOfCoins) ||
                other.numberOfCoins == numberOfCoins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, dateTime, type, amount, numberOfCoins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentEntityCopyWith<_$_PaymentEntity> get copyWith =>
      __$$_PaymentEntityCopyWithImpl<_$_PaymentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentEntityToJson(
      this,
    );
  }
}

abstract class _PaymentEntity implements PaymentEntity {
  const factory _PaymentEntity(
      {required final String symbol,
      required final DateTime dateTime,
      required final String type,
      required final double amount,
      required final double numberOfCoins}) = _$_PaymentEntity;

  factory _PaymentEntity.fromJson(Map<String, dynamic> json) =
      _$_PaymentEntity.fromJson;

  @override
  String get symbol;
  @override
  DateTime get dateTime;
  @override
  String get type;
  @override
  double get amount;
  @override
  double get numberOfCoins;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentEntityCopyWith<_$_PaymentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

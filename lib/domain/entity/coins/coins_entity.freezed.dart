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
  List<CoinEntity> get list => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinsEntityCopyWith<CoinsEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsEntityCopyWith<$Res> {
  factory $CoinsEntityCopyWith(CoinsEntity value, $Res Function(CoinsEntity) then) =
      _$CoinsEntityCopyWithImpl<$Res, CoinsEntity>;
  @useResult
  $Res call({List<CoinEntity> list, DateTime updateTime});
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
    Object? list = null,
    Object? updateTime = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CoinEntity>,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinsEntityCopyWith<$Res> implements $CoinsEntityCopyWith<$Res> {
  factory _$$_CoinsEntityCopyWith(_$_CoinsEntity value, $Res Function(_$_CoinsEntity) then) =
      __$$_CoinsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoinEntity> list, DateTime updateTime});
}

/// @nodoc
class __$$_CoinsEntityCopyWithImpl<$Res> extends _$CoinsEntityCopyWithImpl<$Res, _$_CoinsEntity>
    implements _$$_CoinsEntityCopyWith<$Res> {
  __$$_CoinsEntityCopyWithImpl(_$_CoinsEntity _value, $Res Function(_$_CoinsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? updateTime = null,
  }) {
    return _then(_$_CoinsEntity(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
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
  const _$_CoinsEntity({required final List<CoinEntity> list, required this.updateTime})
      : _list = list;

  factory _$_CoinsEntity.fromJson(Map<String, dynamic> json) => _$$_CoinsEntityFromJson(json);

  final List<CoinEntity> _list;
  @override
  List<CoinEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final DateTime updateTime;

  @override
  String toString() {
    return 'CoinsEntity(list: $list, updateTime: $updateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinsEntity &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.updateTime, updateTime) || other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list), updateTime);

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
      {required final List<CoinEntity> list, required final DateTime updateTime}) = _$_CoinsEntity;

  factory _CoinsEntity.fromJson(Map<String, dynamic> json) = _$_CoinsEntity.fromJson;

  @override
  List<CoinEntity> get list;
  @override
  DateTime get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$_CoinsEntityCopyWith<_$_CoinsEntity> get copyWith => throw _privateConstructorUsedError;
}

CoinEntity _$CoinEntityFromJson(Map<String, dynamic> json) {
  return _CoinEntity.fromJson(json);
}

/// @nodoc
mixin _$CoinEntity {
//market data
  CoinId get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get marketCap => throw _privateConstructorUsedError;
  double get priceChangePercentage24H => throw _privateConstructorUsedError;
  double? get marketCapRank => throw _privateConstructorUsedError;
  double? get circulatingSupply => throw _privateConstructorUsedError;
  double? get totalSupply => throw _privateConstructorUsedError;
  double? get maxSupply => throw _privateConstructorUsedError;
  double? get ath => throw _privateConstructorUsedError;
  double? get athChangePercentage => throw _privateConstructorUsedError;
  String? get athDate => throw _privateConstructorUsedError;
  double? get atl => throw _privateConstructorUsedError;
  double? get atlChangePercentage => throw _privateConstructorUsedError;
  String? get atlDate => throw _privateConstructorUsedError; //user data
  List<PaymentEntity> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinEntityCopyWith<CoinEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinEntityCopyWith<$Res> {
  factory $CoinEntityCopyWith(CoinEntity value, $Res Function(CoinEntity) then) =
      _$CoinEntityCopyWithImpl<$Res, CoinEntity>;
  @useResult
  $Res call(
      {CoinId id,
      String image,
      double currentPrice,
      double marketCap,
      double priceChangePercentage24H,
      double? marketCapRank,
      double? circulatingSupply,
      double? totalSupply,
      double? maxSupply,
      double? ath,
      double? athChangePercentage,
      String? athDate,
      double? atl,
      double? atlChangePercentage,
      String? atlDate,
      List<PaymentEntity> history});

  $CoinIdCopyWith<$Res> get id;
}

/// @nodoc
class _$CoinEntityCopyWithImpl<$Res, $Val extends CoinEntity> implements $CoinEntityCopyWith<$Res> {
  _$CoinEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? priceChangePercentage24H = null,
    Object? marketCapRank = freezed,
    Object? circulatingSupply = freezed,
    Object? totalSupply = freezed,
    Object? maxSupply = freezed,
    Object? ath = freezed,
    Object? athChangePercentage = freezed,
    Object? athDate = freezed,
    Object? atl = freezed,
    Object? atlChangePercentage = freezed,
    Object? atlDate = freezed,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CoinId,
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
      priceChangePercentage24H: null == priceChangePercentage24H
          ? _value.priceChangePercentage24H
          : priceChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as double?,
      circulatingSupply: freezed == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSupply: freezed == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSupply: freezed == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      ath: freezed == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double?,
      athChangePercentage: freezed == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      athDate: freezed == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as String?,
      atl: freezed == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double?,
      atlChangePercentage: freezed == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      atlDate: freezed == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as String?,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<PaymentEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinIdCopyWith<$Res> get id {
    return $CoinIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CoinEntityCopyWith<$Res> implements $CoinEntityCopyWith<$Res> {
  factory _$$_CoinEntityCopyWith(_$_CoinEntity value, $Res Function(_$_CoinEntity) then) =
      __$$_CoinEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CoinId id,
      String image,
      double currentPrice,
      double marketCap,
      double priceChangePercentage24H,
      double? marketCapRank,
      double? circulatingSupply,
      double? totalSupply,
      double? maxSupply,
      double? ath,
      double? athChangePercentage,
      String? athDate,
      double? atl,
      double? atlChangePercentage,
      String? atlDate,
      List<PaymentEntity> history});

  @override
  $CoinIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_CoinEntityCopyWithImpl<$Res> extends _$CoinEntityCopyWithImpl<$Res, _$_CoinEntity>
    implements _$$_CoinEntityCopyWith<$Res> {
  __$$_CoinEntityCopyWithImpl(_$_CoinEntity _value, $Res Function(_$_CoinEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = null,
    Object? priceChangePercentage24H = null,
    Object? marketCapRank = freezed,
    Object? circulatingSupply = freezed,
    Object? totalSupply = freezed,
    Object? maxSupply = freezed,
    Object? ath = freezed,
    Object? athChangePercentage = freezed,
    Object? athDate = freezed,
    Object? atl = freezed,
    Object? atlChangePercentage = freezed,
    Object? atlDate = freezed,
    Object? history = null,
  }) {
    return _then(_$_CoinEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CoinId,
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
      priceChangePercentage24H: null == priceChangePercentage24H
          ? _value.priceChangePercentage24H
          : priceChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as double?,
      circulatingSupply: freezed == circulatingSupply
          ? _value.circulatingSupply
          : circulatingSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSupply: freezed == totalSupply
          ? _value.totalSupply
          : totalSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSupply: freezed == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as double?,
      ath: freezed == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double?,
      athChangePercentage: freezed == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      athDate: freezed == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as String?,
      atl: freezed == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double?,
      atlChangePercentage: freezed == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      atlDate: freezed == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {required this.id,
      required this.image,
      required this.currentPrice,
      required this.marketCap,
      required this.priceChangePercentage24H,
      required this.marketCapRank,
      required this.circulatingSupply,
      required this.totalSupply,
      required this.maxSupply,
      required this.ath,
      required this.athChangePercentage,
      required this.athDate,
      required this.atl,
      required this.atlChangePercentage,
      required this.atlDate,
      required final List<PaymentEntity> history})
      : _history = history;

  factory _$_CoinEntity.fromJson(Map<String, dynamic> json) => _$$_CoinEntityFromJson(json);

//market data
  @override
  final CoinId id;
  @override
  final String image;
  @override
  final double currentPrice;
  @override
  final double marketCap;
  @override
  final double priceChangePercentage24H;
  @override
  final double? marketCapRank;
  @override
  final double? circulatingSupply;
  @override
  final double? totalSupply;
  @override
  final double? maxSupply;
  @override
  final double? ath;
  @override
  final double? athChangePercentage;
  @override
  final String? athDate;
  @override
  final double? atl;
  @override
  final double? atlChangePercentage;
  @override
  final String? atlDate;
//user data
  final List<PaymentEntity> _history;
//user data
  @override
  List<PaymentEntity> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'CoinEntity(id: $id, image: $image, currentPrice: $currentPrice, marketCap: $marketCap, priceChangePercentage24H: $priceChangePercentage24H, marketCapRank: $marketCapRank, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, maxSupply: $maxSupply, ath: $ath, athChangePercentage: $athChangePercentage, athDate: $athDate, atl: $atl, atlChangePercentage: $atlChangePercentage, atlDate: $atlDate, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice) &&
            (identical(other.marketCap, marketCap) || other.marketCap == marketCap) &&
            (identical(other.priceChangePercentage24H, priceChangePercentage24H) ||
                other.priceChangePercentage24H == priceChangePercentage24H) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.circulatingSupply, circulatingSupply) ||
                other.circulatingSupply == circulatingSupply) &&
            (identical(other.totalSupply, totalSupply) || other.totalSupply == totalSupply) &&
            (identical(other.maxSupply, maxSupply) || other.maxSupply == maxSupply) &&
            (identical(other.ath, ath) || other.ath == ath) &&
            (identical(other.athChangePercentage, athChangePercentage) ||
                other.athChangePercentage == athChangePercentage) &&
            (identical(other.athDate, athDate) || other.athDate == athDate) &&
            (identical(other.atl, atl) || other.atl == atl) &&
            (identical(other.atlChangePercentage, atlChangePercentage) ||
                other.atlChangePercentage == atlChangePercentage) &&
            (identical(other.atlDate, atlDate) || other.atlDate == atlDate) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      currentPrice,
      marketCap,
      priceChangePercentage24H,
      marketCapRank,
      circulatingSupply,
      totalSupply,
      maxSupply,
      ath,
      athChangePercentage,
      athDate,
      atl,
      atlChangePercentage,
      atlDate,
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
      {required final CoinId id,
      required final String image,
      required final double currentPrice,
      required final double marketCap,
      required final double priceChangePercentage24H,
      required final double? marketCapRank,
      required final double? circulatingSupply,
      required final double? totalSupply,
      required final double? maxSupply,
      required final double? ath,
      required final double? athChangePercentage,
      required final String? athDate,
      required final double? atl,
      required final double? atlChangePercentage,
      required final String? atlDate,
      required final List<PaymentEntity> history}) = _$_CoinEntity;

  factory _CoinEntity.fromJson(Map<String, dynamic> json) = _$_CoinEntity.fromJson;

  @override //market data
  CoinId get id;
  @override
  String get image;
  @override
  double get currentPrice;
  @override
  double get marketCap;
  @override
  double get priceChangePercentage24H;
  @override
  double? get marketCapRank;
  @override
  double? get circulatingSupply;
  @override
  double? get totalSupply;
  @override
  double? get maxSupply;
  @override
  double? get ath;
  @override
  double? get athChangePercentage;
  @override
  String? get athDate;
  @override
  double? get atl;
  @override
  double? get atlChangePercentage;
  @override
  String? get atlDate;
  @override //user data
  List<PaymentEntity> get history;
  @override
  @JsonKey(ignore: true)
  _$$_CoinEntityCopyWith<_$_CoinEntity> get copyWith => throw _privateConstructorUsedError;
}

CoinId _$CoinIdFromJson(Map<String, dynamic> json) {
  return _CoinId.fromJson(json);
}

/// @nodoc
mixin _$CoinId {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinIdCopyWith<CoinId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinIdCopyWith<$Res> {
  factory $CoinIdCopyWith(CoinId value, $Res Function(CoinId) then) =
      _$CoinIdCopyWithImpl<$Res, CoinId>;
  @useResult
  $Res call({String symbol, String name});
}

/// @nodoc
class _$CoinIdCopyWithImpl<$Res, $Val extends CoinId> implements $CoinIdCopyWith<$Res> {
  _$CoinIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinIdCopyWith<$Res> implements $CoinIdCopyWith<$Res> {
  factory _$$_CoinIdCopyWith(_$_CoinId value, $Res Function(_$_CoinId) then) =
      __$$_CoinIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String name});
}

/// @nodoc
class __$$_CoinIdCopyWithImpl<$Res> extends _$CoinIdCopyWithImpl<$Res, _$_CoinId>
    implements _$$_CoinIdCopyWith<$Res> {
  __$$_CoinIdCopyWithImpl(_$_CoinId _value, $Res Function(_$_CoinId) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
  }) {
    return _then(_$_CoinId(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinId implements _CoinId {
  const _$_CoinId({required this.symbol, required this.name});

  factory _$_CoinId.fromJson(Map<String, dynamic> json) => _$$_CoinIdFromJson(json);

  @override
  final String symbol;
  @override
  final String name;

  @override
  String toString() {
    return 'CoinId(symbol: $symbol, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinId &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinIdCopyWith<_$_CoinId> get copyWith =>
      __$$_CoinIdCopyWithImpl<_$_CoinId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinIdToJson(
      this,
    );
  }
}

abstract class _CoinId implements CoinId {
  const factory _CoinId({required final String symbol, required final String name}) = _$_CoinId;

  factory _CoinId.fromJson(Map<String, dynamic> json) = _$_CoinId.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CoinIdCopyWith<_$_CoinId> get copyWith => throw _privateConstructorUsedError;
}

PaymentEntity _$PaymentEntityFromJson(Map<String, dynamic> json) {
  return _PaymentEntity.fromJson(json);
}

/// @nodoc
mixin _$PaymentEntity {
  CoinId get id => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get numberOfCoins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentEntityCopyWith<PaymentEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEntityCopyWith<$Res> {
  factory $PaymentEntityCopyWith(PaymentEntity value, $Res Function(PaymentEntity) then) =
      _$PaymentEntityCopyWithImpl<$Res, PaymentEntity>;
  @useResult
  $Res call({CoinId id, DateTime dateTime, String type, double amount, double numberOfCoins});

  $CoinIdCopyWith<$Res> get id;
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
    Object? id = null,
    Object? dateTime = null,
    Object? type = null,
    Object? amount = null,
    Object? numberOfCoins = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CoinId,
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

  @override
  @pragma('vm:prefer-inline')
  $CoinIdCopyWith<$Res> get id {
    return $CoinIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentEntityCopyWith<$Res> implements $PaymentEntityCopyWith<$Res> {
  factory _$$_PaymentEntityCopyWith(_$_PaymentEntity value, $Res Function(_$_PaymentEntity) then) =
      __$$_PaymentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinId id, DateTime dateTime, String type, double amount, double numberOfCoins});

  @override
  $CoinIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_PaymentEntityCopyWithImpl<$Res>
    extends _$PaymentEntityCopyWithImpl<$Res, _$_PaymentEntity>
    implements _$$_PaymentEntityCopyWith<$Res> {
  __$$_PaymentEntityCopyWithImpl(_$_PaymentEntity _value, $Res Function(_$_PaymentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? type = null,
    Object? amount = null,
    Object? numberOfCoins = null,
  }) {
    return _then(_$_PaymentEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CoinId,
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
      {required this.id,
      required this.dateTime,
      required this.type,
      required this.amount,
      required this.numberOfCoins});

  factory _$_PaymentEntity.fromJson(Map<String, dynamic> json) => _$$_PaymentEntityFromJson(json);

  @override
  final CoinId id;
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
    return 'PaymentEntity(id: $id, dateTime: $dateTime, type: $type, amount: $amount, numberOfCoins: $numberOfCoins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) || other.dateTime == dateTime) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.numberOfCoins, numberOfCoins) ||
                other.numberOfCoins == numberOfCoins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateTime, type, amount, numberOfCoins);

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
      {required final CoinId id,
      required final DateTime dateTime,
      required final String type,
      required final double amount,
      required final double numberOfCoins}) = _$_PaymentEntity;

  factory _PaymentEntity.fromJson(Map<String, dynamic> json) = _$_PaymentEntity.fromJson;

  @override
  CoinId get id;
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
  _$$_PaymentEntityCopyWith<_$_PaymentEntity> get copyWith => throw _privateConstructorUsedError;
}

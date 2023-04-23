// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gecko_coin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeckoCoinDTO _$GeckoCoinDTOFromJson(Map<String, dynamic> json) {
  return _GeckoCoinDTO.fromJson(json);
}

/// @nodoc
mixin _$GeckoCoinDTO {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap')
  double? get marketCap => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_rank')
  double? get marketCapRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'fully_diluted_valuation')
  double? get fullyDilutedValuation => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_volume')
  double get totalVolume => throw _privateConstructorUsedError;
  double get high_24h => throw _privateConstructorUsedError;
  double get low_24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_24h')
  double get priceChange_24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChangePercentage_24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_change_24h')
  double get marketCapChange_24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_change_percentage_24h')
  double get marketCapChangePercentage_24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'circulating_supply')
  double? get circulatingSupply => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_supply')
  double? get totalSupply => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_supply')
  double? get maxSupply => throw _privateConstructorUsedError;
  double get ath => throw _privateConstructorUsedError;
  @JsonKey(name: 'ath_change_percentage')
  double get athChangePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'ath_date')
  String get athDate => throw _privateConstructorUsedError;
  double get atl => throw _privateConstructorUsedError;
  @JsonKey(name: 'atl_change_percentage')
  double get atlChangePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'atl_date')
  String get atlDate => throw _privateConstructorUsedError;
  GeckoRoiDTO? get roi => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  String get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeckoCoinDTOCopyWith<GeckoCoinDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeckoCoinDTOCopyWith<$Res> {
  factory $GeckoCoinDTOCopyWith(GeckoCoinDTO value, $Res Function(GeckoCoinDTO) then) =
      _$GeckoCoinDTOCopyWithImpl<$Res, GeckoCoinDTO>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'market_cap') double? marketCap,
      @JsonKey(name: 'market_cap_rank') double? marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation') double? fullyDilutedValuation,
      @JsonKey(name: 'total_volume') double totalVolume,
      double high_24h,
      double low_24h,
      @JsonKey(name: 'price_change_24h') double priceChange_24h,
      @JsonKey(name: 'price_change_percentage_24h') double priceChangePercentage_24h,
      @JsonKey(name: 'market_cap_change_24h') double marketCapChange_24h,
      @JsonKey(name: 'market_cap_change_percentage_24h') double marketCapChangePercentage_24h,
      @JsonKey(name: 'circulating_supply') double? circulatingSupply,
      @JsonKey(name: 'total_supply') double? totalSupply,
      @JsonKey(name: 'max_supply') double? maxSupply,
      double ath,
      @JsonKey(name: 'ath_change_percentage') double athChangePercentage,
      @JsonKey(name: 'ath_date') String athDate,
      double atl,
      @JsonKey(name: 'atl_change_percentage') double atlChangePercentage,
      @JsonKey(name: 'atl_date') String atlDate,
      GeckoRoiDTO? roi,
      @JsonKey(name: 'last_updated') String lastUpdated});

  $GeckoRoiDTOCopyWith<$Res>? get roi;
}

/// @nodoc
class _$GeckoCoinDTOCopyWithImpl<$Res, $Val extends GeckoCoinDTO>
    implements $GeckoCoinDTOCopyWith<$Res> {
  _$GeckoCoinDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = freezed,
    Object? marketCapRank = freezed,
    Object? fullyDilutedValuation = freezed,
    Object? totalVolume = null,
    Object? high_24h = null,
    Object? low_24h = null,
    Object? priceChange_24h = null,
    Object? priceChangePercentage_24h = null,
    Object? marketCapChange_24h = null,
    Object? marketCapChangePercentage_24h = null,
    Object? circulatingSupply = freezed,
    Object? totalSupply = freezed,
    Object? maxSupply = freezed,
    Object? ath = null,
    Object? athChangePercentage = null,
    Object? athDate = null,
    Object? atl = null,
    Object? atlChangePercentage = null,
    Object? atlDate = null,
    Object? roi = freezed,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      marketCap: freezed == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double?,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as double?,
      fullyDilutedValuation: freezed == fullyDilutedValuation
          ? _value.fullyDilutedValuation
          : fullyDilutedValuation // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high_24h: null == high_24h
          ? _value.high_24h
          : high_24h // ignore: cast_nullable_to_non_nullable
              as double,
      low_24h: null == low_24h
          ? _value.low_24h
          : low_24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange_24h: null == priceChange_24h
          ? _value.priceChange_24h
          : priceChange_24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage_24h: null == priceChangePercentage_24h
          ? _value.priceChangePercentage_24h
          : priceChangePercentage_24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChange_24h: null == marketCapChange_24h
          ? _value.marketCapChange_24h
          : marketCapChange_24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage_24h: null == marketCapChangePercentage_24h
          ? _value.marketCapChangePercentage_24h
          : marketCapChangePercentage_24h // ignore: cast_nullable_to_non_nullable
              as double,
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
      ath: null == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double,
      athChangePercentage: null == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      athDate: null == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as String,
      atl: null == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double,
      atlChangePercentage: null == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      atlDate: null == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as String,
      roi: freezed == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as GeckoRoiDTO?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeckoRoiDTOCopyWith<$Res>? get roi {
    if (_value.roi == null) {
      return null;
    }

    return $GeckoRoiDTOCopyWith<$Res>(_value.roi!, (value) {
      return _then(_value.copyWith(roi: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeckoCoinDTOCopyWith<$Res> implements $GeckoCoinDTOCopyWith<$Res> {
  factory _$$_GeckoCoinDTOCopyWith(_$_GeckoCoinDTO value, $Res Function(_$_GeckoCoinDTO) then) =
      __$$_GeckoCoinDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'market_cap') double? marketCap,
      @JsonKey(name: 'market_cap_rank') double? marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation') double? fullyDilutedValuation,
      @JsonKey(name: 'total_volume') double totalVolume,
      double high_24h,
      double low_24h,
      @JsonKey(name: 'price_change_24h') double priceChange_24h,
      @JsonKey(name: 'price_change_percentage_24h') double priceChangePercentage_24h,
      @JsonKey(name: 'market_cap_change_24h') double marketCapChange_24h,
      @JsonKey(name: 'market_cap_change_percentage_24h') double marketCapChangePercentage_24h,
      @JsonKey(name: 'circulating_supply') double? circulatingSupply,
      @JsonKey(name: 'total_supply') double? totalSupply,
      @JsonKey(name: 'max_supply') double? maxSupply,
      double ath,
      @JsonKey(name: 'ath_change_percentage') double athChangePercentage,
      @JsonKey(name: 'ath_date') String athDate,
      double atl,
      @JsonKey(name: 'atl_change_percentage') double atlChangePercentage,
      @JsonKey(name: 'atl_date') String atlDate,
      GeckoRoiDTO? roi,
      @JsonKey(name: 'last_updated') String lastUpdated});

  @override
  $GeckoRoiDTOCopyWith<$Res>? get roi;
}

/// @nodoc
class __$$_GeckoCoinDTOCopyWithImpl<$Res> extends _$GeckoCoinDTOCopyWithImpl<$Res, _$_GeckoCoinDTO>
    implements _$$_GeckoCoinDTOCopyWith<$Res> {
  __$$_GeckoCoinDTOCopyWithImpl(_$_GeckoCoinDTO _value, $Res Function(_$_GeckoCoinDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? marketCap = freezed,
    Object? marketCapRank = freezed,
    Object? fullyDilutedValuation = freezed,
    Object? totalVolume = null,
    Object? high_24h = null,
    Object? low_24h = null,
    Object? priceChange_24h = null,
    Object? priceChangePercentage_24h = null,
    Object? marketCapChange_24h = null,
    Object? marketCapChangePercentage_24h = null,
    Object? circulatingSupply = freezed,
    Object? totalSupply = freezed,
    Object? maxSupply = freezed,
    Object? ath = null,
    Object? athChangePercentage = null,
    Object? athDate = null,
    Object? atl = null,
    Object? atlChangePercentage = null,
    Object? atlDate = null,
    Object? roi = freezed,
    Object? lastUpdated = null,
  }) {
    return _then(_$_GeckoCoinDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      marketCap: freezed == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double?,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as double?,
      fullyDilutedValuation: freezed == fullyDilutedValuation
          ? _value.fullyDilutedValuation
          : fullyDilutedValuation // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high_24h: null == high_24h
          ? _value.high_24h
          : high_24h // ignore: cast_nullable_to_non_nullable
              as double,
      low_24h: null == low_24h
          ? _value.low_24h
          : low_24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange_24h: null == priceChange_24h
          ? _value.priceChange_24h
          : priceChange_24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage_24h: null == priceChangePercentage_24h
          ? _value.priceChangePercentage_24h
          : priceChangePercentage_24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChange_24h: null == marketCapChange_24h
          ? _value.marketCapChange_24h
          : marketCapChange_24h // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage_24h: null == marketCapChangePercentage_24h
          ? _value.marketCapChangePercentage_24h
          : marketCapChangePercentage_24h // ignore: cast_nullable_to_non_nullable
              as double,
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
      ath: null == ath
          ? _value.ath
          : ath // ignore: cast_nullable_to_non_nullable
              as double,
      athChangePercentage: null == athChangePercentage
          ? _value.athChangePercentage
          : athChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      athDate: null == athDate
          ? _value.athDate
          : athDate // ignore: cast_nullable_to_non_nullable
              as String,
      atl: null == atl
          ? _value.atl
          : atl // ignore: cast_nullable_to_non_nullable
              as double,
      atlChangePercentage: null == atlChangePercentage
          ? _value.atlChangePercentage
          : atlChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      atlDate: null == atlDate
          ? _value.atlDate
          : atlDate // ignore: cast_nullable_to_non_nullable
              as String,
      roi: freezed == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as GeckoRoiDTO?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeckoCoinDTO implements _GeckoCoinDTO {
  const _$_GeckoCoinDTO(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      @JsonKey(name: 'current_price')
          required this.currentPrice,
      @JsonKey(name: 'market_cap')
          required this.marketCap,
      @JsonKey(name: 'market_cap_rank')
          required this.marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation')
          required this.fullyDilutedValuation,
      @JsonKey(name: 'total_volume')
          required this.totalVolume,
      required this.high_24h,
      required this.low_24h,
      @JsonKey(name: 'price_change_24h')
          required this.priceChange_24h,
      @JsonKey(name: 'price_change_percentage_24h')
          required this.priceChangePercentage_24h,
      @JsonKey(name: 'market_cap_change_24h')
          required this.marketCapChange_24h,
      @JsonKey(name: 'market_cap_change_percentage_24h')
          required this.marketCapChangePercentage_24h,
      @JsonKey(name: 'circulating_supply')
          required this.circulatingSupply,
      @JsonKey(name: 'total_supply')
          required this.totalSupply,
      @JsonKey(name: 'max_supply')
          required this.maxSupply,
      required this.ath,
      @JsonKey(name: 'ath_change_percentage')
          required this.athChangePercentage,
      @JsonKey(name: 'ath_date')
          required this.athDate,
      required this.atl,
      @JsonKey(name: 'atl_change_percentage')
          required this.atlChangePercentage,
      @JsonKey(name: 'atl_date')
          required this.atlDate,
      required this.roi,
      @JsonKey(name: 'last_updated')
          required this.lastUpdated});

  factory _$_GeckoCoinDTO.fromJson(Map<String, dynamic> json) => _$$_GeckoCoinDTOFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @override
  @JsonKey(name: 'market_cap')
  final double? marketCap;
  @override
  @JsonKey(name: 'market_cap_rank')
  final double? marketCapRank;
  @override
  @JsonKey(name: 'fully_diluted_valuation')
  final double? fullyDilutedValuation;
  @override
  @JsonKey(name: 'total_volume')
  final double totalVolume;
  @override
  final double high_24h;
  @override
  final double low_24h;
  @override
  @JsonKey(name: 'price_change_24h')
  final double priceChange_24h;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChangePercentage_24h;
  @override
  @JsonKey(name: 'market_cap_change_24h')
  final double marketCapChange_24h;
  @override
  @JsonKey(name: 'market_cap_change_percentage_24h')
  final double marketCapChangePercentage_24h;
  @override
  @JsonKey(name: 'circulating_supply')
  final double? circulatingSupply;
  @override
  @JsonKey(name: 'total_supply')
  final double? totalSupply;
  @override
  @JsonKey(name: 'max_supply')
  final double? maxSupply;
  @override
  final double ath;
  @override
  @JsonKey(name: 'ath_change_percentage')
  final double athChangePercentage;
  @override
  @JsonKey(name: 'ath_date')
  final String athDate;
  @override
  final double atl;
  @override
  @JsonKey(name: 'atl_change_percentage')
  final double atlChangePercentage;
  @override
  @JsonKey(name: 'atl_date')
  final String atlDate;
  @override
  final GeckoRoiDTO? roi;
  @override
  @JsonKey(name: 'last_updated')
  final String lastUpdated;

  @override
  String toString() {
    return 'GeckoCoinDTO(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, marketCap: $marketCap, marketCapRank: $marketCapRank, fullyDilutedValuation: $fullyDilutedValuation, totalVolume: $totalVolume, high_24h: $high_24h, low_24h: $low_24h, priceChange_24h: $priceChange_24h, priceChangePercentage_24h: $priceChangePercentage_24h, marketCapChange_24h: $marketCapChange_24h, marketCapChangePercentage_24h: $marketCapChangePercentage_24h, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, maxSupply: $maxSupply, ath: $ath, athChangePercentage: $athChangePercentage, athDate: $athDate, atl: $atl, atlChangePercentage: $atlChangePercentage, atlDate: $atlDate, roi: $roi, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeckoCoinDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice) &&
            (identical(other.marketCap, marketCap) || other.marketCap == marketCap) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.fullyDilutedValuation, fullyDilutedValuation) ||
                other.fullyDilutedValuation == fullyDilutedValuation) &&
            (identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume) &&
            (identical(other.high_24h, high_24h) || other.high_24h == high_24h) &&
            (identical(other.low_24h, low_24h) || other.low_24h == low_24h) &&
            (identical(other.priceChange_24h, priceChange_24h) ||
                other.priceChange_24h == priceChange_24h) &&
            (identical(other.priceChangePercentage_24h, priceChangePercentage_24h) ||
                other.priceChangePercentage_24h == priceChangePercentage_24h) &&
            (identical(other.marketCapChange_24h, marketCapChange_24h) ||
                other.marketCapChange_24h == marketCapChange_24h) &&
            (identical(other.marketCapChangePercentage_24h, marketCapChangePercentage_24h) ||
                other.marketCapChangePercentage_24h == marketCapChangePercentage_24h) &&
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
            (identical(other.roi, roi) || other.roi == roi) &&
            (identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        symbol,
        name,
        image,
        currentPrice,
        marketCap,
        marketCapRank,
        fullyDilutedValuation,
        totalVolume,
        high_24h,
        low_24h,
        priceChange_24h,
        priceChangePercentage_24h,
        marketCapChange_24h,
        marketCapChangePercentage_24h,
        circulatingSupply,
        totalSupply,
        maxSupply,
        ath,
        athChangePercentage,
        athDate,
        atl,
        atlChangePercentage,
        atlDate,
        roi,
        lastUpdated
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeckoCoinDTOCopyWith<_$_GeckoCoinDTO> get copyWith =>
      __$$_GeckoCoinDTOCopyWithImpl<_$_GeckoCoinDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeckoCoinDTOToJson(
      this,
    );
  }
}

abstract class _GeckoCoinDTO implements GeckoCoinDTO {
  const factory _GeckoCoinDTO(
      {required final String id,
      required final String symbol,
      required final String name,
      required final String image,
      @JsonKey(name: 'current_price')
          required final double currentPrice,
      @JsonKey(name: 'market_cap')
          required final double? marketCap,
      @JsonKey(name: 'market_cap_rank')
          required final double? marketCapRank,
      @JsonKey(name: 'fully_diluted_valuation')
          required final double? fullyDilutedValuation,
      @JsonKey(name: 'total_volume')
          required final double totalVolume,
      required final double high_24h,
      required final double low_24h,
      @JsonKey(name: 'price_change_24h')
          required final double priceChange_24h,
      @JsonKey(name: 'price_change_percentage_24h')
          required final double priceChangePercentage_24h,
      @JsonKey(name: 'market_cap_change_24h')
          required final double marketCapChange_24h,
      @JsonKey(name: 'market_cap_change_percentage_24h')
          required final double marketCapChangePercentage_24h,
      @JsonKey(name: 'circulating_supply')
          required final double? circulatingSupply,
      @JsonKey(name: 'total_supply')
          required final double? totalSupply,
      @JsonKey(name: 'max_supply')
          required final double? maxSupply,
      required final double ath,
      @JsonKey(name: 'ath_change_percentage')
          required final double athChangePercentage,
      @JsonKey(name: 'ath_date')
          required final String athDate,
      required final double atl,
      @JsonKey(name: 'atl_change_percentage')
          required final double atlChangePercentage,
      @JsonKey(name: 'atl_date')
          required final String atlDate,
      required final GeckoRoiDTO? roi,
      @JsonKey(name: 'last_updated')
          required final String lastUpdated}) = _$_GeckoCoinDTO;

  factory _GeckoCoinDTO.fromJson(Map<String, dynamic> json) = _$_GeckoCoinDTO.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(name: 'current_price')
  double get currentPrice;
  @override
  @JsonKey(name: 'market_cap')
  double? get marketCap;
  @override
  @JsonKey(name: 'market_cap_rank')
  double? get marketCapRank;
  @override
  @JsonKey(name: 'fully_diluted_valuation')
  double? get fullyDilutedValuation;
  @override
  @JsonKey(name: 'total_volume')
  double get totalVolume;
  @override
  double get high_24h;
  @override
  double get low_24h;
  @override
  @JsonKey(name: 'price_change_24h')
  double get priceChange_24h;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChangePercentage_24h;
  @override
  @JsonKey(name: 'market_cap_change_24h')
  double get marketCapChange_24h;
  @override
  @JsonKey(name: 'market_cap_change_percentage_24h')
  double get marketCapChangePercentage_24h;
  @override
  @JsonKey(name: 'circulating_supply')
  double? get circulatingSupply;
  @override
  @JsonKey(name: 'total_supply')
  double? get totalSupply;
  @override
  @JsonKey(name: 'max_supply')
  double? get maxSupply;
  @override
  double get ath;
  @override
  @JsonKey(name: 'ath_change_percentage')
  double get athChangePercentage;
  @override
  @JsonKey(name: 'ath_date')
  String get athDate;
  @override
  double get atl;
  @override
  @JsonKey(name: 'atl_change_percentage')
  double get atlChangePercentage;
  @override
  @JsonKey(name: 'atl_date')
  String get atlDate;
  @override
  GeckoRoiDTO? get roi;
  @override
  @JsonKey(name: 'last_updated')
  String get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_GeckoCoinDTOCopyWith<_$_GeckoCoinDTO> get copyWith => throw _privateConstructorUsedError;
}

GeckoRoiDTO _$GeckoRoiDTOFromJson(Map<String, dynamic> json) {
  return _GeckoRoiDTO.fromJson(json);
}

/// @nodoc
mixin _$GeckoRoiDTO {
  double get times => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeckoRoiDTOCopyWith<GeckoRoiDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeckoRoiDTOCopyWith<$Res> {
  factory $GeckoRoiDTOCopyWith(GeckoRoiDTO value, $Res Function(GeckoRoiDTO) then) =
      _$GeckoRoiDTOCopyWithImpl<$Res, GeckoRoiDTO>;
  @useResult
  $Res call({double times, String currency, double percentage});
}

/// @nodoc
class _$GeckoRoiDTOCopyWithImpl<$Res, $Val extends GeckoRoiDTO>
    implements $GeckoRoiDTOCopyWith<$Res> {
  _$GeckoRoiDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? times = null,
    Object? currency = null,
    Object? percentage = null,
  }) {
    return _then(_value.copyWith(
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeckoRoiDTOCopyWith<$Res> implements $GeckoRoiDTOCopyWith<$Res> {
  factory _$$_GeckoRoiDTOCopyWith(_$_GeckoRoiDTO value, $Res Function(_$_GeckoRoiDTO) then) =
      __$$_GeckoRoiDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double times, String currency, double percentage});
}

/// @nodoc
class __$$_GeckoRoiDTOCopyWithImpl<$Res> extends _$GeckoRoiDTOCopyWithImpl<$Res, _$_GeckoRoiDTO>
    implements _$$_GeckoRoiDTOCopyWith<$Res> {
  __$$_GeckoRoiDTOCopyWithImpl(_$_GeckoRoiDTO _value, $Res Function(_$_GeckoRoiDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? times = null,
    Object? currency = null,
    Object? percentage = null,
  }) {
    return _then(_$_GeckoRoiDTO(
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeckoRoiDTO implements _GeckoRoiDTO {
  const _$_GeckoRoiDTO({required this.times, required this.currency, required this.percentage});

  factory _$_GeckoRoiDTO.fromJson(Map<String, dynamic> json) => _$$_GeckoRoiDTOFromJson(json);

  @override
  final double times;
  @override
  final String currency;
  @override
  final double percentage;

  @override
  String toString() {
    return 'GeckoRoiDTO(times: $times, currency: $currency, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeckoRoiDTO &&
            (identical(other.times, times) || other.times == times) &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.percentage, percentage) || other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, times, currency, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeckoRoiDTOCopyWith<_$_GeckoRoiDTO> get copyWith =>
      __$$_GeckoRoiDTOCopyWithImpl<_$_GeckoRoiDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeckoRoiDTOToJson(
      this,
    );
  }
}

abstract class _GeckoRoiDTO implements GeckoRoiDTO {
  const factory _GeckoRoiDTO(
      {required final double times,
      required final String currency,
      required final double percentage}) = _$_GeckoRoiDTO;

  factory _GeckoRoiDTO.fromJson(Map<String, dynamic> json) = _$_GeckoRoiDTO.fromJson;

  @override
  double get times;
  @override
  String get currency;
  @override
  double get percentage;
  @override
  @JsonKey(ignore: true)
  _$$_GeckoRoiDTOCopyWith<_$_GeckoRoiDTO> get copyWith => throw _privateConstructorUsedError;
}

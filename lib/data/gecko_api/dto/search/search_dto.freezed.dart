// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDTO _$SearchDTOFromJson(Map<String, dynamic> json) {
  return _SearchDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchDTO {
  List<SearchCoinDTO> get coins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDTOCopyWith<SearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDTOCopyWith<$Res> {
  factory $SearchDTOCopyWith(SearchDTO value, $Res Function(SearchDTO) then) =
      _$SearchDTOCopyWithImpl<$Res, SearchDTO>;
  @useResult
  $Res call({List<SearchCoinDTO> coins});
}

/// @nodoc
class _$SearchDTOCopyWithImpl<$Res, $Val extends SearchDTO>
    implements $SearchDTOCopyWith<$Res> {
  _$SearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<SearchCoinDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchDTOCopyWith<$Res> implements $SearchDTOCopyWith<$Res> {
  factory _$$_SearchDTOCopyWith(
          _$_SearchDTO value, $Res Function(_$_SearchDTO) then) =
      __$$_SearchDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchCoinDTO> coins});
}

/// @nodoc
class __$$_SearchDTOCopyWithImpl<$Res>
    extends _$SearchDTOCopyWithImpl<$Res, _$_SearchDTO>
    implements _$$_SearchDTOCopyWith<$Res> {
  __$$_SearchDTOCopyWithImpl(
      _$_SearchDTO _value, $Res Function(_$_SearchDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$_SearchDTO(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<SearchCoinDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchDTO implements _SearchDTO {
  const _$_SearchDTO({required final List<SearchCoinDTO> coins})
      : _coins = coins;

  factory _$_SearchDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SearchDTOFromJson(json);

  final List<SearchCoinDTO> _coins;
  @override
  List<SearchCoinDTO> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'SearchDTO(coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDTO &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDTOCopyWith<_$_SearchDTO> get copyWith =>
      __$$_SearchDTOCopyWithImpl<_$_SearchDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchDTOToJson(
      this,
    );
  }
}

abstract class _SearchDTO implements SearchDTO {
  const factory _SearchDTO({required final List<SearchCoinDTO> coins}) =
      _$_SearchDTO;

  factory _SearchDTO.fromJson(Map<String, dynamic> json) =
      _$_SearchDTO.fromJson;

  @override
  List<SearchCoinDTO> get coins;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDTOCopyWith<_$_SearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchCoinDTO _$SearchCoinDTOFromJson(Map<String, dynamic> json) {
  return _SearchCoinDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchCoinDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_symbol')
  String get apiSymbol => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_rank')
  int? get marketCapRank => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCoinDTOCopyWith<SearchCoinDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCoinDTOCopyWith<$Res> {
  factory $SearchCoinDTOCopyWith(
          SearchCoinDTO value, $Res Function(SearchCoinDTO) then) =
      _$SearchCoinDTOCopyWithImpl<$Res, SearchCoinDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'api_symbol') String apiSymbol,
      String symbol,
      @JsonKey(name: 'market_cap_rank') int? marketCapRank,
      String thumb,
      String large});
}

/// @nodoc
class _$SearchCoinDTOCopyWithImpl<$Res, $Val extends SearchCoinDTO>
    implements $SearchCoinDTOCopyWith<$Res> {
  _$SearchCoinDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiSymbol = null,
    Object? symbol = null,
    Object? marketCapRank = freezed,
    Object? thumb = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiSymbol: null == apiSymbol
          ? _value.apiSymbol
          : apiSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int?,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchCoinDTOCopyWith<$Res>
    implements $SearchCoinDTOCopyWith<$Res> {
  factory _$$_SearchCoinDTOCopyWith(
          _$_SearchCoinDTO value, $Res Function(_$_SearchCoinDTO) then) =
      __$$_SearchCoinDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'api_symbol') String apiSymbol,
      String symbol,
      @JsonKey(name: 'market_cap_rank') int? marketCapRank,
      String thumb,
      String large});
}

/// @nodoc
class __$$_SearchCoinDTOCopyWithImpl<$Res>
    extends _$SearchCoinDTOCopyWithImpl<$Res, _$_SearchCoinDTO>
    implements _$$_SearchCoinDTOCopyWith<$Res> {
  __$$_SearchCoinDTOCopyWithImpl(
      _$_SearchCoinDTO _value, $Res Function(_$_SearchCoinDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiSymbol = null,
    Object? symbol = null,
    Object? marketCapRank = freezed,
    Object? thumb = null,
    Object? large = null,
  }) {
    return _then(_$_SearchCoinDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiSymbol: null == apiSymbol
          ? _value.apiSymbol
          : apiSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int?,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchCoinDTO implements _SearchCoinDTO {
  const _$_SearchCoinDTO(
      {required this.id,
      required this.name,
      @JsonKey(name: 'api_symbol') required this.apiSymbol,
      required this.symbol,
      @JsonKey(name: 'market_cap_rank') this.marketCapRank,
      required this.thumb,
      required this.large});

  factory _$_SearchCoinDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCoinDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'api_symbol')
  final String apiSymbol;
  @override
  final String symbol;
  @override
  @JsonKey(name: 'market_cap_rank')
  final int? marketCapRank;
  @override
  final String thumb;
  @override
  final String large;

  @override
  String toString() {
    return 'SearchCoinDTO(id: $id, name: $name, apiSymbol: $apiSymbol, symbol: $symbol, marketCapRank: $marketCapRank, thumb: $thumb, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCoinDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiSymbol, apiSymbol) ||
                other.apiSymbol == apiSymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, apiSymbol, symbol, marketCapRank, thumb, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCoinDTOCopyWith<_$_SearchCoinDTO> get copyWith =>
      __$$_SearchCoinDTOCopyWithImpl<_$_SearchCoinDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCoinDTOToJson(
      this,
    );
  }
}

abstract class _SearchCoinDTO implements SearchCoinDTO {
  const factory _SearchCoinDTO(
      {required final String id,
      required final String name,
      @JsonKey(name: 'api_symbol') required final String apiSymbol,
      required final String symbol,
      @JsonKey(name: 'market_cap_rank') final int? marketCapRank,
      required final String thumb,
      required final String large}) = _$_SearchCoinDTO;

  factory _SearchCoinDTO.fromJson(Map<String, dynamic> json) =
      _$_SearchCoinDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'api_symbol')
  String get apiSymbol;
  @override
  String get symbol;
  @override
  @JsonKey(name: 'market_cap_rank')
  int? get marketCapRank;
  @override
  String get thumb;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCoinDTOCopyWith<_$_SearchCoinDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

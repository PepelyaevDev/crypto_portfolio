// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_coins_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllCoinsListDto _$AllCoinsListDtoFromJson(Map<String, dynamic> json) {
  return _AllCoinsListDto.fromJson(json);
}

/// @nodoc
mixin _$AllCoinsListDto {
  List<CoinParamsDto> get coins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllCoinsListDtoCopyWith<AllCoinsListDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCoinsListDtoCopyWith<$Res> {
  factory $AllCoinsListDtoCopyWith(AllCoinsListDto value, $Res Function(AllCoinsListDto) then) =
      _$AllCoinsListDtoCopyWithImpl<$Res, AllCoinsListDto>;
  @useResult
  $Res call({List<CoinParamsDto> coins});
}

/// @nodoc
class _$AllCoinsListDtoCopyWithImpl<$Res, $Val extends AllCoinsListDto>
    implements $AllCoinsListDtoCopyWith<$Res> {
  _$AllCoinsListDtoCopyWithImpl(this._value, this._then);

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
              as List<CoinParamsDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllCoinsListDtoCopyWith<$Res> implements $AllCoinsListDtoCopyWith<$Res> {
  factory _$$_AllCoinsListDtoCopyWith(
          _$_AllCoinsListDto value, $Res Function(_$_AllCoinsListDto) then) =
      __$$_AllCoinsListDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoinParamsDto> coins});
}

/// @nodoc
class __$$_AllCoinsListDtoCopyWithImpl<$Res>
    extends _$AllCoinsListDtoCopyWithImpl<$Res, _$_AllCoinsListDto>
    implements _$$_AllCoinsListDtoCopyWith<$Res> {
  __$$_AllCoinsListDtoCopyWithImpl(
      _$_AllCoinsListDto _value, $Res Function(_$_AllCoinsListDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$_AllCoinsListDto(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinParamsDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllCoinsListDto implements _AllCoinsListDto {
  const _$_AllCoinsListDto({required final List<CoinParamsDto> coins}) : _coins = coins;

  factory _$_AllCoinsListDto.fromJson(Map<String, dynamic> json) =>
      _$$_AllCoinsListDtoFromJson(json);

  final List<CoinParamsDto> _coins;
  @override
  List<CoinParamsDto> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'AllCoinsListDto(coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllCoinsListDto &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllCoinsListDtoCopyWith<_$_AllCoinsListDto> get copyWith =>
      __$$_AllCoinsListDtoCopyWithImpl<_$_AllCoinsListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllCoinsListDtoToJson(
      this,
    );
  }
}

abstract class _AllCoinsListDto implements AllCoinsListDto {
  const factory _AllCoinsListDto({required final List<CoinParamsDto> coins}) = _$_AllCoinsListDto;

  factory _AllCoinsListDto.fromJson(Map<String, dynamic> json) = _$_AllCoinsListDto.fromJson;

  @override
  List<CoinParamsDto> get coins;
  @override
  @JsonKey(ignore: true)
  _$$_AllCoinsListDtoCopyWith<_$_AllCoinsListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinParamsDto _$CoinParamsDtoFromJson(Map<String, dynamic> json) {
  return _CoinParamsDto.fromJson(json);
}

/// @nodoc
mixin _$CoinParamsDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinParamsDtoCopyWith<CoinParamsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinParamsDtoCopyWith<$Res> {
  factory $CoinParamsDtoCopyWith(CoinParamsDto value, $Res Function(CoinParamsDto) then) =
      _$CoinParamsDtoCopyWithImpl<$Res, CoinParamsDto>;
  @useResult
  $Res call({String id, String name, String symbol});
}

/// @nodoc
class _$CoinParamsDtoCopyWithImpl<$Res, $Val extends CoinParamsDto>
    implements $CoinParamsDtoCopyWith<$Res> {
  _$CoinParamsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
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
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinParamsDtoCopyWith<$Res> implements $CoinParamsDtoCopyWith<$Res> {
  factory _$$_CoinParamsDtoCopyWith(_$_CoinParamsDto value, $Res Function(_$_CoinParamsDto) then) =
      __$$_CoinParamsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String symbol});
}

/// @nodoc
class __$$_CoinParamsDtoCopyWithImpl<$Res>
    extends _$CoinParamsDtoCopyWithImpl<$Res, _$_CoinParamsDto>
    implements _$$_CoinParamsDtoCopyWith<$Res> {
  __$$_CoinParamsDtoCopyWithImpl(_$_CoinParamsDto _value, $Res Function(_$_CoinParamsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(_$_CoinParamsDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinParamsDto implements _CoinParamsDto {
  const _$_CoinParamsDto({required this.id, required this.name, required this.symbol});

  factory _$_CoinParamsDto.fromJson(Map<String, dynamic> json) => _$$_CoinParamsDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;

  @override
  String toString() {
    return 'CoinParamsDto(id: $id, name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinParamsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinParamsDtoCopyWith<_$_CoinParamsDto> get copyWith =>
      __$$_CoinParamsDtoCopyWithImpl<_$_CoinParamsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinParamsDtoToJson(
      this,
    );
  }
}

abstract class _CoinParamsDto implements CoinParamsDto {
  const factory _CoinParamsDto(
      {required final String id,
      required final String name,
      required final String symbol}) = _$_CoinParamsDto;

  factory _CoinParamsDto.fromJson(Map<String, dynamic> json) = _$_CoinParamsDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$$_CoinParamsDtoCopyWith<_$_CoinParamsDto> get copyWith => throw _privateConstructorUsedError;
}

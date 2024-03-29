// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEntity {
  List<SearchCoinEntity> get coins => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEntityCopyWith<SearchEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEntityCopyWith<$Res> {
  factory $SearchEntityCopyWith(SearchEntity value, $Res Function(SearchEntity) then) =
      _$SearchEntityCopyWithImpl<$Res, SearchEntity>;
  @useResult
  $Res call({List<SearchCoinEntity> coins});
}

/// @nodoc
class _$SearchEntityCopyWithImpl<$Res, $Val extends SearchEntity>
    implements $SearchEntityCopyWith<$Res> {
  _$SearchEntityCopyWithImpl(this._value, this._then);

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
              as List<SearchCoinEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchEntityCopyWith<$Res> implements $SearchEntityCopyWith<$Res> {
  factory _$$_SearchEntityCopyWith(_$_SearchEntity value, $Res Function(_$_SearchEntity) then) =
      __$$_SearchEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchCoinEntity> coins});
}

/// @nodoc
class __$$_SearchEntityCopyWithImpl<$Res> extends _$SearchEntityCopyWithImpl<$Res, _$_SearchEntity>
    implements _$$_SearchEntityCopyWith<$Res> {
  __$$_SearchEntityCopyWithImpl(_$_SearchEntity _value, $Res Function(_$_SearchEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$_SearchEntity(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<SearchCoinEntity>,
    ));
  }
}

/// @nodoc

class _$_SearchEntity implements _SearchEntity {
  const _$_SearchEntity({required final List<SearchCoinEntity> coins}) : _coins = coins;

  final List<SearchCoinEntity> _coins;
  @override
  List<SearchCoinEntity> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'SearchEntity(coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEntity &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchEntityCopyWith<_$_SearchEntity> get copyWith =>
      __$$_SearchEntityCopyWithImpl<_$_SearchEntity>(this, _$identity);
}

abstract class _SearchEntity implements SearchEntity {
  const factory _SearchEntity({required final List<SearchCoinEntity> coins}) = _$_SearchEntity;

  @override
  List<SearchCoinEntity> get coins;
  @override
  @JsonKey(ignore: true)
  _$$_SearchEntityCopyWith<_$_SearchEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchCoinEntity {
  CoinId get id => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int? get marketCapRank => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCoinEntityCopyWith<SearchCoinEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCoinEntityCopyWith<$Res> {
  factory $SearchCoinEntityCopyWith(SearchCoinEntity value, $Res Function(SearchCoinEntity) then) =
      _$SearchCoinEntityCopyWithImpl<$Res, SearchCoinEntity>;
  @useResult
  $Res call({CoinId id, String icon, int? marketCapRank});

  $CoinIdCopyWith<$Res> get id;
}

/// @nodoc
class _$SearchCoinEntityCopyWithImpl<$Res, $Val extends SearchCoinEntity>
    implements $SearchCoinEntityCopyWith<$Res> {
  _$SearchCoinEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? marketCapRank = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CoinId,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_SearchCoinEntityCopyWith<$Res> implements $SearchCoinEntityCopyWith<$Res> {
  factory _$$_SearchCoinEntityCopyWith(
          _$_SearchCoinEntity value, $Res Function(_$_SearchCoinEntity) then) =
      __$$_SearchCoinEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinId id, String icon, int? marketCapRank});

  @override
  $CoinIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_SearchCoinEntityCopyWithImpl<$Res>
    extends _$SearchCoinEntityCopyWithImpl<$Res, _$_SearchCoinEntity>
    implements _$$_SearchCoinEntityCopyWith<$Res> {
  __$$_SearchCoinEntityCopyWithImpl(
      _$_SearchCoinEntity _value, $Res Function(_$_SearchCoinEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? marketCapRank = freezed,
  }) {
    return _then(_$_SearchCoinEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CoinId,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapRank: freezed == marketCapRank
          ? _value.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SearchCoinEntity implements _SearchCoinEntity {
  const _$_SearchCoinEntity({required this.id, required this.icon, required this.marketCapRank});

  @override
  final CoinId id;
  @override
  final String icon;
  @override
  final int? marketCapRank;

  @override
  String toString() {
    return 'SearchCoinEntity(id: $id, icon: $icon, marketCapRank: $marketCapRank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCoinEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, icon, marketCapRank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCoinEntityCopyWith<_$_SearchCoinEntity> get copyWith =>
      __$$_SearchCoinEntityCopyWithImpl<_$_SearchCoinEntity>(this, _$identity);
}

abstract class _SearchCoinEntity implements SearchCoinEntity {
  const factory _SearchCoinEntity(
      {required final CoinId id,
      required final String icon,
      required final int? marketCapRank}) = _$_SearchCoinEntity;

  @override
  CoinId get id;
  @override
  String get icon;
  @override
  int? get marketCapRank;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCoinEntityCopyWith<_$_SearchCoinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

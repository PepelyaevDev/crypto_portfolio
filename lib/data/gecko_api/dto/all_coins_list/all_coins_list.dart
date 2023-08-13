import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_coins_list.freezed.dart';
part 'all_coins_list.g.dart';

@freezed
class AllCoinsListDto with _$AllCoinsListDto {
  const factory AllCoinsListDto({
    required List<CoinParamsDto> coins,
  }) = _AllCoinsListDto;

  factory AllCoinsListDto.fromJson(Map<String, Object?> json) => _$AllCoinsListDtoFromJson(json);
}

@freezed
class CoinParamsDto with _$CoinParamsDto {
  const factory CoinParamsDto({
    required String id,
    required String name,
    required String symbol,
  }) = _CoinParamsDto;

  factory CoinParamsDto.fromJson(Map<String, Object?> json) => _$CoinParamsDtoFromJson(json);
}

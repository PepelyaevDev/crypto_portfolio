part of 'detail_portfolio_coin_bloc.dart';

@freezed
class DetailPortfolioCoinEvent with _$DetailPortfolioCoinEvent {
  const factory DetailPortfolioCoinEvent.update(String coinId) = _Update;
}

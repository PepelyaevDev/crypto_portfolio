import 'package:bloc_test/bloc_test.dart';
import 'package:crypto_portfolio/coins_info/coin_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:coins_info_repository/coins_info_repository.dart' as coins_info_repository;
import 'package:hydrated_bloc/hydrated_bloc.dart';

class MockCoinsInfoRepository extends Mock implements coins_info_repository.CoinsInfoRepository {}

class MockCoinsList extends Mock implements coins_info_repository.CoinsList {}

class MockCoin1 extends Mock implements coins_info_repository.Coin {}

class MockCoin2 extends Mock implements coins_info_repository.Coin {}

class MockStorage extends Mock implements Storage {}

const id1 = '1';
const symbol1 = 'btc';
const name1 = 'bitcoin';
const image1 = 'btc/img';
const currentPrice1 = 16.3;
const id2 = '2';
const symbol2 = 'eth';
const name2 = 'ethereum';
const image2 = 'eth/img';
const currentPrice2 = 1.2;

void main() {
  late Storage storage;

  group('CoinsInfoCubit', () {
    late coins_info_repository.CoinsInfoRepository coinsInfoRepository;
    late CoinsInfoCubit coinsInfoCubit;
    late coins_info_repository.CoinsList coinsList;
    late coins_info_repository.Coin coin1;
    late coins_info_repository.Coin coin2;

    setUp(() async {
      storage = MockStorage();
      when(() => storage.write(any(), any<dynamic>())).thenAnswer((_) async {});
      HydratedBloc.storage = storage;

      coinsInfoRepository = MockCoinsInfoRepository();
      coinsInfoCubit = CoinsInfoCubit(coinsInfoRepository);
      coinsList = MockCoinsList();
      coin1 = MockCoin1();
      coin2 = MockCoin2();

      when(() => coin1.id).thenReturn(id1);
      when(() => coin1.symbol).thenReturn(symbol1);
      when(() => coin1.name).thenReturn(name1);
      when(() => coin1.image).thenReturn(image1);
      when(() => coin1.currentPrice).thenReturn(currentPrice1);
      when(() => coin2.id).thenReturn(id2);
      when(() => coin2.symbol).thenReturn(symbol2);
      when(() => coin2.name).thenReturn(name2);
      when(() => coin2.image).thenReturn(image2);
      when(() => coin2.currentPrice).thenReturn(currentPrice2);
      when(() => coinsList.coins).thenReturn([coin1, coin2]);
      when(() => coinsInfoRepository.getCoins()).thenAnswer((_) async => coinsList);
    });

    test('initial state is correct', () {
      final coinsInfoCubit = CoinsInfoCubit(coinsInfoRepository);
      expect(coinsInfoCubit.state, CoinsInfoState());
    });

    group('toJson/fromJson', () {
      test('work properly', () {
        final coinsInfoCubit = CoinsInfoCubit(coinsInfoRepository);
        coinsInfoCubit.emit(coinsInfoCubit.state.copyWith(
          coinsList: CoinsList(
            lastUpdated: DateTime.now(),
            coins: const [
              Coin(id: id1, symbol: symbol1, name: name1, image: image1, currentPrice: currentPrice1),
              Coin(id: id2, symbol: symbol2, name: name2, image: image2, currentPrice: currentPrice2),
            ],
          ),
        ));
        expect(
          coinsInfoCubit.fromJson(coinsInfoCubit.toJson(coinsInfoCubit.state)),
          coinsInfoCubit.state,
        );
      });
    });

    group('getCoins', () {
      blocTest<CoinsInfoCubit, CoinsInfoState>(
        'calls repository getCoins',
        build: () => coinsInfoCubit,
        act: (cubit) => cubit.getCoins(),
        verify: (_) {
          verify(() => coinsInfoRepository.getCoins()).called(1);
        },
      );

      blocTest<CoinsInfoCubit, CoinsInfoState>(
        'emits [loading, failure] when getCoins throws',
        setUp: () {
          when(
            () => coinsInfoRepository.getCoins(),
          ).thenThrow(Exception('oops'));
        },
        build: () => coinsInfoCubit,
        act: (cubit) => cubit.getCoins(),
        expect: () => <CoinsInfoState>[
          CoinsInfoState(status: CoinsInfoStatus.loading),
          CoinsInfoState(status: CoinsInfoStatus.failure),
        ],
      );

      blocTest<CoinsInfoCubit, CoinsInfoState>(
        'emits [loading, success] when getCoins returns coinsList',
        build: () => coinsInfoCubit,
        act: (cubit) => cubit.getCoins(),
        expect: () => <dynamic>[
          CoinsInfoState(status: CoinsInfoStatus.loading),
          isA<CoinsInfoState>().having((w) => w.status, 'status', CoinsInfoStatus.success).having(
                (w) => w.coinsList,
                'coinsList',
                isA<CoinsList>().having((w) => w.lastUpdated, 'lastUpdated', isNotNull).having(
                      (w) => w.coins,
                      'coins',
                      coinsList.coins
                          .map(
                            (e) => Coin(
                                id: e.id, symbol: e.symbol, name: e.name, image: e.image, currentPrice: e.currentPrice),
                          )
                          .toList(),
                    ),
              ),
        ],
      );
    });
  });
}

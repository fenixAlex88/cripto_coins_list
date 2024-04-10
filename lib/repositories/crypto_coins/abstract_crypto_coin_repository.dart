import 'package:cripto_coins_list/repositories/crypto_coins/crypto_coin.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}

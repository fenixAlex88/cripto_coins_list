import 'package:cripto_coins_list/features/crypto_coin/crypto_coin.dart';
import 'package:cripto_coins_list/features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => const CryptoListScreen(title: 'Crypto Curencies List'),
  '/coin': (context) => const CryptoCoinScreen(),
};

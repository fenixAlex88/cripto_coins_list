import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:equatable/equatable.dart';

class CryptoCoin extends Equatable {
  const CryptoCoin({required this.name, required this.datails});

  final String name;
  final CryptoCoinDetail datails;

  @override
  List<Object> get props => [name, datails];
}

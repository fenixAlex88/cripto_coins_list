import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'crypto_coin.g.dart';

@HiveType(typeId: 2)
class CryptoCoin extends Equatable {
  const CryptoCoin({required this.name, required this.datails});

  @HiveField(0)
  final String name;

  @HiveField(1)
  final CryptoCoinDetail datails;

  @override
  List<Object> get props => [name, datails];
}

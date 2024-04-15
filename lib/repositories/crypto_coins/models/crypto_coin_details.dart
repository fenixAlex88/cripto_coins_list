import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_coin_details.g.dart';

@JsonSerializable()
class CryptoCoinDetail extends Equatable {
  const CryptoCoinDetail({
    required this.priceInUSD,
    required this.imageUrl,
    required this.toSymbol,
    required this.lastUpdate,
    required this.hight24Hour,
    required this.low24Hours,
  });
  @JsonKey(name: "PRICE")
  final double priceInUSD;

  @JsonKey(name: "IMAGEURL")
  final String imageUrl;

  String get fullImageUrl => 'https://www.cryptocompare.com/$imageUrl';

  @JsonKey(name: "TOSYMBOL")
  final String toSymbol;

  @JsonKey(
    name: "LASTUPDATE",
    toJson: _dateTimeToJson,
    fromJson: _dateTimeFromJson,
  )
  final DateTime lastUpdate;

  @JsonKey(name: "HIGH24HOUR")
  final double hight24Hour;

  @JsonKey(name: "LOW24HOUR")
  final double low24Hours;

  static int _dateTimeToJson(DateTime time) => time.millisecondsSinceEpoch;

  static DateTime _dateTimeFromJson(int millisec) =>
      DateTime.fromMillisecondsSinceEpoch(millisec);

  /// Connect the generated [_$CryptoCoinDetailFromJson] function to the `fromJson`
  /// factory.
  factory CryptoCoinDetail.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinDetailFromJson(json);

  /// Connect the generated [_$CryptoCoinDetailToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CryptoCoinDetailToJson(this);

  @override
  List<Object?> get props =>
      [priceInUSD, imageUrl, toSymbol, lastUpdate, hight24Hour, low24Hours];
}

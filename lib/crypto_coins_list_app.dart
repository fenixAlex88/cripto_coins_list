import 'package:cripto_coins_list/router/router.dart';
import 'package:cripto_coins_list/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Curencies List',
      theme: darkTheme,
      routes: routes,
    );
  }
}

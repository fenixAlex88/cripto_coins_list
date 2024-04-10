import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coiName,
  });

  final String coiName;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/bitcoin-logo.svg',
        height: 30,
        width: 30,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(
        coiName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "70000\$",
        style: theme.textTheme.labelSmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coiName,
        );
      },
    );
  }
}

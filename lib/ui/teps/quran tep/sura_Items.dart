import 'package:flutter/material.dart';

class SuraItems extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraItems(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 50, child: VerticalDivider()),
        Expanded(
          child: Text(
            suraName,
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

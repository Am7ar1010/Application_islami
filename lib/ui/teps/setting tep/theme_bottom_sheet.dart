import 'package:application_testing/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({
    super.key,
  });

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: height * 0.02,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.02),
            margin: EdgeInsets.symmetric(horizontal: width * 0.06),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: theme.colorScheme.onPrimary, width: 2),
            ),
            child: GestureDetector(
                onTap: () {
                  appProvider.toggleTheme(ThemeMode.light);
                },
                child: appProvider.currentTheme == ThemeMode.light
                    ? buildSelectedItemTheme(
                        AppLocalizations.of(context)!.mode_light, theme)
                    : buildUnselectedItemTheme(
                        AppLocalizations.of(context)!.mode_light, theme)),
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.02),
            margin: EdgeInsets.symmetric(horizontal: width * 0.06),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: theme.colorScheme.onPrimary, width: 2),
            ),
            child: GestureDetector(
                onTap: () {
                  appProvider.toggleTheme(ThemeMode.dark);
                },
                child: appProvider.currentTheme == ThemeMode.dark
                    ? buildSelectedItemTheme(
                        AppLocalizations.of(context)!.mode_dark, theme)
                    : buildUnselectedItemTheme(
                        AppLocalizations.of(context)!.mode_dark, theme)),
          ),
        ],
      ),
    );
  }

  Widget buildSelectedItemTheme(String selectedTheme, dynamic theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selectedTheme, style: theme.textTheme.titleMedium),
        Icon(
          Icons.check,
          size: 30,
          color: theme.colorScheme.onPrimary,
        ),
      ],
    );
  }

  Widget buildUnselectedItemTheme(String unselectedTheme, dynamic theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(unselectedTheme, style: theme.textTheme.titleMedium),
      ],
    );
  }
}

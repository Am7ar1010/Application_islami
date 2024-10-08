import 'package:application_testing/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({
    super.key,
  });

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
                appProvider.toggleLanguage("en");
              },
              child: appProvider.currentLanguage == "en"
                  ? bulidSelectedLanguageItem(
                      AppLocalizations.of(context)!.language_en, theme)
                  : bulidUnSelectedLanguageItem(
                      AppLocalizations.of(context)!.language_en, theme),
            ),
          ),
          const SizedBox(height: 12),
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
                appProvider.toggleLanguage("ar");
              },
              child: appProvider.currentLanguage == "ar"
                  ? bulidSelectedLanguageItem(
                      AppLocalizations.of(context)!.language_ar, theme)
                  : bulidUnSelectedLanguageItem(
                      AppLocalizations.of(context)!.language_ar, theme),
            ),
          ),
        ],
      ),
    );
  }

  Widget bulidSelectedLanguageItem(String SelectedLaunguage, dynamic theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(SelectedLaunguage, style: theme.textTheme.titleMedium),
        Icon(
          Icons.check,
          size: 30,
          color: theme.colorScheme.onPrimary,
        ),
      ],
    );
  }

  Widget bulidUnSelectedLanguageItem(
      String UnSelectedLaunguage, dynamic theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(UnSelectedLaunguage, style: theme.textTheme.titleMedium),
      ],
    );
  }
}
